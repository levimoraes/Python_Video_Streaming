from subprocess import call
import os
import multiprocessing
import time
from os import path

def record(x):
    call(['ffmpeg', '-i', '/dev/video0', '-ss', '0', '-t', '30', x])

def stream():
    call(['ffmpeg', '-re', '-i', 'final.mp4', '-c', 'copy', '-f', 'flv', 'rtmp:///show/stream_hd720'])

def convert():
    call(['avconv', '-threads', '1', '-i', 'test.mp4', '-c:v', 'libx264', 'final.mp4'])

def checking(x):
    value = path.exists(x)
    return value

