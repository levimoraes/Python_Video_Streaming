from ex import *
from subprocess import call
import os
import multiprocessing
import time

def move(a1,a2):
        call(['mv', a1, a2 ])


if __name__=="__main__":
    # os.chdir('/home/levi.moraes/')
    a1 = 'True'
    while a1 == 'True':
        record('test.mp4')
        move('test.mp4', 'CONVERSAO/')
        print('ARQUIVO MOVIDO PARA CONVERT FEITA')

