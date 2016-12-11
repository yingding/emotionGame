#!/usr/bin/env python3

import threading as tr
from SpeechPython.speech import Speech


# import sys
# import select
# import termios
import subprocess

class RosFace(tr.Thread):
    def __init__(self):
        super(RosFace, self).__init__()

    def run(self):
        pass
        

def main():
    # Start the game
    s = Speech()
    s.create_talk("Welcome to the emotion game.", "id1")
    tr1 = RosFace().start()
    s.play_talk("id1")
    
    
main()

    

    
    


