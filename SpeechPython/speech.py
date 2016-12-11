import speech_recognition as sr
from gtts import gTTS
import pygame


class Speech:
    """
    class for TTS and STT
    """

    def __init__(self):
        self.r = sr.Recognizer()
        pygame.mixer.init()


    def ceate_talk(self, str, fname, l='en'):
        """
        function takes (text) and saves it to (file_name).mp3

        parameters:
            text        - text
            file_name   - filename for output (without '.mp3')
            [lang       - language]
        """

        tts = gTTS(text=str, lang=l)
        tts.save(fname+".mp3")


    def listen(self, time):
        """
        function listens (time) sec and returns text or "fail"

        parameters:
            file_name   - filename for output
            time        - recording time

        """
        with sr.Microphone() as source:
            self.r.adjust_for_ambient_noise(source)
            audio = self.r.listen(source, 0, time)

        try:
            res = self.r.recognize_google(audio)
            return res

        except:
            return "fail"


    def play_talk(self, fname):
        """
        function playes (file_name)

        parameters:
            file_name   - mp3-file with speech (without '.mp3')
        """
        pygame.mixer.music.load(fname+".mp3")
        pygame.mixer.music.play()