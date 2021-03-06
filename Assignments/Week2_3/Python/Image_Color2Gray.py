import numpy as np
import cv2 as cv
import struct

def rgb2gray(r,g,b):
    gray = (0.2989*r + 0.5870*g + 0.1140*b) / 255
    return gray

def bin_to_float(binary):
    return struct.unpack('!f',struct.pack('!I', int(binary, 2)))[0]

def float_to_bin(num):
    return format(struct.unpack('!I', struct.pack('!f', num))[0], '032b')

image = np.zeros((500, 500, 3), np.uint8)

f1 = open('Dataset/Text/iredfloat.txt', 'r')
f2 = open('Dataset/Text/igreenfloat.txt', 'r')
f3 = open('Dataset/Text/ibluefloat.txt', 'r')
f4 = open('Dataset/Text/Python.txt','w')
f5 = open('Dataset/Text/Pythonint2.txt','w')

pixelsb = []
pixelsg = []
pixelsr = []
gray = []

for x1 in f3:
    pixelsb.append(int(bin_to_float(x1)*255))
for x2 in f2:
    pixelsg.append(int(bin_to_float(x2)*255))
for x3 in f1:
    pixelsr.append(int(bin_to_float(x3)*255))

i = 0
j = 0
k = 0

for i in range(500):
    for j in range(500):
        f4.write(float_to_bin(rgb2gray((pixelsr[k]), (pixelsg[k]), (pixelsb[k]))) + '\n')
        f5.write(str(int(rgb2gray((pixelsr[k])*255, (pixelsg[k])*255, (pixelsb[k])*255))) + '\n')
        image[i, j] = rgb2gray((pixelsr[k])*255, (pixelsg[k])*255, (pixelsb[k])*255)
        k = k + 1

# Write image
cv.imwrite('Dataset/Image_Vid/GrayPython.jpg', image)
cv.imshow('GrayPython',image)
cv.waitKey()
cv.destroyAllWindows()
f1.close()
f2.close()
f3.close()
f4.close()
f5.close()


