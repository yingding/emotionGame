#!/usr/bin/env python3
# Requires PyAudio and PySpeech.

# pip3 install speech_recognition

import speech_recognition as sr
 
# Record Audio
r = sr.Recognizer()
with sr.Microphone() as source:
    r.adjust_for_ambient_noise(source)
    print("Say something!")
    audio = r.listen(source)
 
 
f = audio.get_wav_data()
open("sound.wav", "wb").write(f)

res = r.recognize_google(audio)
print(res)


# # Speech recognition using Google Speech Recognition
# try:
#     # for testing purposes, we're just using the default API key
#     # to use another API key, use `r.recognize_google(audio, key="GOOGLE_SPEECH_RECOGNITION_API_KEY")`
#     # instead of `r.recognize_google(audio)`
#     # print("You said: " + r.recognize_google(audio))
#     print("You said: " + r.recognize_google(audio, key="???"))
# except sr.UnknownValueError:
#     print("Google Speech Recognition could not understand audio")
# except sr.RequestError as e:
#     print("Could not request results from Google Speech Recognition service;0}".format(e))
