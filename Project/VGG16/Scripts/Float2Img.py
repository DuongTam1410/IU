import numpy as np
import cv2 as cv
import struct
import sys

"""with open("grayver2.txt", "r") as f:
    lines = f.readlines()
with open("grayver2.txt", "w") as f:
    for line in lines:
        if not line.isspace():
            sys.stdout.write(line)
            f.write(line)

"""


def rgb2gray(r,g,b):
    gray = (0.2989*r + 0.5870*g + 0.1140*b) / 255
    return gray

def bin_to_float(binary):
    return struct.unpack('!f',struct.pack('!I', int(binary, 2)))[0]

def float_to_bin(num):
    return format(struct.unpack('!I', struct.pack('!f', num))[0], '032b')

image = np.zeros((224, 224, 3), np.uint8)

f1 = open('grayver.txt', 'r')

gray = []

for x1 in f1:
    gray.append(int(bin_to_float(x1)*255))

i = 0
j = 0
k = 0

for i in range(218):
    for j in range(218):
        image[i, j] = (gray[k]),(gray[k]), (gray[k])
        k = k + 1

# Write image
cv.imwrite('Resul Verilog.jpg', image)
cv.imshow('Resul Verilog',image)
cv.waitKey()
cv.destroyAllWindows()
f1.close()
