# Reference: https://people.csail.mit.edu/hubert/pyaudio/#downloads
# Error fix by http://stackoverflow.com/questions/20023131/cannot-install-pyaudio-gcc-error

# Install PyAudio
# sudo apt-get install python-pyaudio python3-pyaudio
# Install PortAudio

sudo apt-get install libasound-dev
sudo apt-get install portaudio19-dev
sudo apt-get install python-all-dev


get from http://portaudio.com/download.html

tar -zxvf [portaudio.tgz]

Enter the directory, ./configure && make

sudo make install

sudo -H pip install pyaudio
sudo -H pip3 install pyaudio

pip3 install SpeechRecognition

sudo python setup.py install
