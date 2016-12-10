/*******************************************************************************

INTEL CORPORATION PROPRIETARY INFORMATION
This software is supplied under the terms of a license agreement or nondisclosure
agreement with Intel Corporation and may not be copied or disclosed except in
accordance with the terms of that agreement
Copyright(c) 2011-2014 Intel Corporation. All Rights Reserved.

*******************************************************************************/
#include <windows.h>
#include "pxcsensemanager.h"
#include "pxcmetadata.h"
#include "util_cmdline.h"
#include "util_render.h"
#include <conio.h>
#include <memory>
#include <chrono>
#include <thread>

#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <iostream>

#include <VideoDetector.h>
#include <PhotoDetector.h>
#include <AffdexException.h>
#include <ProcessStatusListener.h>
#include <FrameDetector.h>
#include <Frame.h>
#include <Face.h>

#include "FaceListener.h"
#include <ImageListener.h>
#include <mutex>

#include <PlottingImageListener.h>

using namespace affdex;
using namespace std;
using namespace cv;



class AFaceListener : public FaceListener
{
	void onFaceFound(float timestamp, FaceId faceId)
	{
		std::cout << "Face id " << faceId << " found at timestamp " << timestamp << std::endl;
		
	}
	void onFaceLost(float timestamp, FaceId faceId)
	{
		std::cout << "Face id " << faceId << " lost at timestamp " << timestamp << std::endl;
	}
};


void ConvertPXCImageToOpenCVMat(PXCImage *inImg, cv::Mat *outImg) {
	
	int cvDataType;
	int cvDataWidth;

	PXCImage::ImageData data;
	inImg->AcquireAccess(PXCImage::ACCESS_READ, &data);
	PXCImage::ImageInfo imgInfo = inImg->QueryInfo();

	switch (data.format) {
		/* STREAM_TYPE_COLOR */
	case PXCImage::PIXEL_FORMAT_YUY2: /* YUY2 image  */
	case PXCImage::PIXEL_FORMAT_NV12: /* NV12 image */
		cvDataType = CV_8U;
		cvDataWidth = 1;
		break;
	case PXCImage::PIXEL_FORMAT_RGB32: //BGRA layout on a little-endian machine
		cvDataType = CV_8UC4;
		cvDataWidth = 4;
		break; 
		
		
	case PXCImage::PIXEL_FORMAT_RGB24: /* BGR layout on a little-endian machine */
		cvDataType = CV_8UC3;
		cvDataWidth = 3;
		break;
	case PXCImage::PIXEL_FORMAT_Y8:  /* 8-Bit Gray Image, or IR 8-bit */
		cvDataType = CV_8U;
		cvDataWidth = 1;
		break;

		/* STREAM_TYPE_DEPTH */
	case PXCImage::PIXEL_FORMAT_DEPTH: /* 16-bit unsigned integer with precision mm. */
	case PXCImage::PIXEL_FORMAT_DEPTH_RAW: /* 16-bit unsigned integer with device specific precision (call device->QueryDepthUnit()) */
		cvDataType = CV_16U;
		cvDataWidth = 2;
		break;
	case PXCImage::PIXEL_FORMAT_DEPTH_F32: /* 32-bit float-point with precision mm. */
		cvDataType = CV_32F;
		cvDataWidth = 4;
		break;

		/* STREAM_TYPE_IR */
	case PXCImage::PIXEL_FORMAT_Y16:          /* 16-Bit Gray Image */
		cvDataType = CV_16U;
		cvDataWidth = 2;
		break;
	case PXCImage::PIXEL_FORMAT_Y8_IR_RELATIVE:    /* Relative IR Image */
		cvDataType = CV_8U;
		cvDataWidth = 1;
		break;
	}

	// suppose that no other planes
	if (data.planes[1] != NULL) throw(0); // not implemented
										  // suppose that no sub pixel padding needed
	if (data.pitches[0] % cvDataWidth != 0) throw(0); // not implemented

	outImg->create(imgInfo.height, data.pitches[0] / cvDataWidth, cvDataType);

	memcpy(outImg->data, data.planes[0], imgInfo.height*imgInfo.width*cvDataWidth * sizeof(pxcBYTE));

	inImg->ReleaseAccess(&data);
}


int wmain(int argc, WCHAR* argv[]) {

	
	
	std::ofstream csvFileStream;
	bool draw_display = false;

	shared_ptr<FaceListener> faceListenPtr(new AFaceListener());
    shared_ptr<PlottingImageListener> listenPtr(new PlottingImageListener(csvFileStream, draw_display));    
       
	shared_ptr<PhotoDetector> photoDetector=make_shared<PhotoDetector>(3, FaceDetectorMode::LARGE_FACES);
	const std::wstring AFFDEX_DATA_DIR = L"C:\\Program Files\\Affectiva\\Affdex SDK\\data";
	const std::wstring AFFDEX_LIC_DIR = L"C:\\Program Files\\Affectiva\\Affdex SDK\\docs";

	photoDetector->setClassifierPath(AFFDEX_DATA_DIR);
	photoDetector->setLicensePath(AFFDEX_LIC_DIR);

        
	photoDetector->setDetectAllEmotions(true);
	photoDetector->setDetectAllExpressions(true);
	photoDetector->setDetectAllEmojis(true);
	photoDetector->setDetectAllAppearances(true);

	photoDetector->setImageListener(listenPtr.get());
	photoDetector->setFaceListener(faceListenPtr.get());
		

	photoDetector->start();

	
	


    /* Creates an instance of the PXCSenseManager */
    PXCSenseManager *pp = PXCSenseManager::CreateInstance();
    if (!pp) {
        wprintf_s(L"Unable to create the SenseManager\n");
        return 3;
    }

    /* Collects command line arguments */
    UtilCmdLine cmdl(pp->QuerySession());
    if (!cmdl.Parse(L"-listio-nframes-sdname-csize-dsize-isize-lsize-rsize-file-record-noRender-mirror",argc,argv)) return 3;

    /* Sets file recording or playback */
    PXCCaptureManager *cm=pp->QueryCaptureManager();
    cm->SetFileName(cmdl.m_recordedFile, cmdl.m_bRecord);
    if (cmdl.m_sdname) cm->FilterByDeviceInfo(cmdl.m_sdname,0,0);

    // Create stream renders
    UtilRender renderc(L"Color"), renderd(L"Depth"), renderi(L"IR"), renderr(L"Right"), renderl(L"Left");
    pxcStatus sts;
    do {
        /* Apply command line arguments */
        pxcBool revert = false;
        if (cmdl.m_csize.size()>0) {
            pp->EnableStream(PXCCapture::STREAM_TYPE_COLOR, cmdl.m_csize.front().first.width, cmdl.m_csize.front().first.height, (pxcF32)cmdl.m_csize.front().second);
        }
        if (cmdl.m_dsize.size()>0) {
            pp->EnableStream(PXCCapture::STREAM_TYPE_DEPTH, cmdl.m_dsize.front().first.width, cmdl.m_dsize.front().first.height, (pxcF32)cmdl.m_dsize.front().second);
        }
        if (cmdl.m_isize.size() > 0) {
            pp->EnableStream(PXCCapture::STREAM_TYPE_IR, cmdl.m_isize.front().first.width, cmdl.m_isize.front().first.height, (pxcF32)cmdl.m_isize.front().second);
        }
        if (cmdl.m_rsize.size() > 0) {
            pp->EnableStream(PXCCapture::STREAM_TYPE_RIGHT, cmdl.m_rsize.front().first.width, cmdl.m_rsize.front().first.height, (pxcF32)cmdl.m_rsize.front().second);
        }
        if (cmdl.m_lsize.size() > 0) {
            pp->EnableStream(PXCCapture::STREAM_TYPE_LEFT, cmdl.m_lsize.front().first.width, cmdl.m_lsize.front().first.height, (pxcF32)cmdl.m_lsize.front().second);
        }
        if (cmdl.m_csize.size() == 0 && cmdl.m_dsize.size() == 0 && cmdl.m_isize.size() == 0 && cmdl.m_rsize.size() == 0 && cmdl.m_lsize.size() == 0) {
            PXCVideoModule::DataDesc desc={};
            if (cm->QueryCapture()) {
                cm->QueryCapture()->QueryDeviceInfo(0, &desc.deviceInfo);
            } else {
                desc.deviceInfo.streams = PXCCapture::STREAM_TYPE_COLOR | PXCCapture::STREAM_TYPE_DEPTH;
                revert = true;
            }
            pp->EnableStreams(&desc);
        }

        /* Initializes the pipeline */
        sts = pp->Init();
        if (sts<PXC_STATUS_NO_ERROR) {
            if (revert) {
                /* Enable a single stream */
                pp->Close();
                pp->EnableStream(PXCCapture::STREAM_TYPE_DEPTH);
                sts = pp->Init();
                if (sts<PXC_STATUS_NO_ERROR) {
                    pp->Close();
                    pp->EnableStream(PXCCapture::STREAM_TYPE_COLOR);
                    sts = pp->Init();
                }
            }
            if (sts<PXC_STATUS_NO_ERROR) {
                wprintf_s(L"Failed to locate any video stream(s)\n");
                pp->Release();
                return sts;
            }
        }

        /* Reset all properties */
        PXCCapture::Device *device = pp->QueryCaptureManager()->QueryDevice();
        device->ResetProperties(PXCCapture::STREAM_TYPE_ANY);

        /* Set mirror mode */
        if (cmdl.m_bMirror) {
            device->SetMirrorMode(PXCCapture::Device::MirrorMode::MIRROR_MODE_HORIZONTAL);
        } else {
            device->SetMirrorMode(PXCCapture::Device::MirrorMode::MIRROR_MODE_DISABLED);
        }

        /* Stream Data */
		cv::Mat imageCV;
		cv::namedWindow("Display window", cv::WINDOW_NORMAL);// Create a window for display.
		resizeWindow("Display window", 640, 480);
        for (int nframes=0;nframes<cmdl.m_nframes;nframes++) {
            /* Waits until new frame is available and locks it for application processing */
            sts=pp->AcquireFrame(false);

            if (sts<PXC_STATUS_NO_ERROR) {
                if (sts==PXC_STATUS_STREAM_CONFIG_CHANGED) {
                    wprintf_s(L"Stream configuration was changed, re-initilizing\n");
                    pp->Close();
                }
                break;
            }

            /* Render streams, unless -noRender is selected */
            if (cmdl.m_bNoRender == false) {
                const PXCCapture::Sample *sample = pp->QuerySample();
				if (sample) {
					//std::cout << nframes << std::endl;
					PXCImage *rgbImage = sample->color;

					ConvertPXCImageToOpenCVMat(rgbImage, &imageCV);

					if (!imageCV.empty()){
					// Show our image inside it.
						imshow("Display window", imageCV);
						cv::waitKey(1000);
						Frame frame(imageCV.size().width, imageCV.size().height, imageCV.data,affdex::Frame::COLOR_FORMAT::RGB);

						
						photoDetector->process(frame);
						cv::waitKey(1000);
					}
					

					//if (sample->depth && !renderd.RenderFrame(sample->depth)) break;
					//if (sample->color && !renderc.RenderFrame(sample->color)) break;
                    //if (sample->ir    && !renderi.RenderFrame(sample->ir))    break;
                    //if (sample->right && !renderr.RenderFrame(sample->right)) break;
                    //if (sample->left  && !renderl.RenderFrame(sample->left))  break;
                }
            }

            /* Releases lock so pipeline can process next frame */
            pp->ReleaseFrame();

            if( _kbhit() ) { // Break loop
                int c = _getch() & 255;
                if( c == 27 || c == 'q' || c == 'Q') break; // ESC|q|Q for Exit
            }
			imageCV.release();
        }
    } while (sts == PXC_STATUS_STREAM_CONFIG_CHANGED);

    wprintf_s(L"Exiting\n");

    // Clean Up
    pp->Release();
    return 0;
}

