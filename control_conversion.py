from ex import *
from subprocess import call
import os
import multiprocessing
import time

def move(a1,a2):
    call(['mv', a1, a2 ])
    

if __name__=="__main__":
    os.chdir('/home/levi.moraes/CONVERSAO')
    a1 = 'True'
    while a1 == 'True':
        if checking('test.mp4') == True:
            convert()
            move('final.mp4', '../STREAM/')
            print('ARQUIVO MOVIDO PARA STREAM FEITA')
