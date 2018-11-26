from ex import *
from subprocess import call
import os
import multiprocessing
import time

if __name__=="__main__":
    os.chdir('STREAM/')
    a1 = 'True'
    while a1=='True':
        if checking('final.mp4') == True: 
            stream()
            call(['rm', 'final.mp4'])
    
    print('ARQUIVO STREAMADO')
