import struct
import numpy as np
import cv2 as cv
from codecs import decode
import struct

def bin_to_float(binary):
    return struct.unpack('!f',struct.pack('!I', int(binary, 2)))[0]
pp = 500
blank_image = np.zeros((pp, pp, 3), np.uint8)

f = open('product2222', 'r')
s = open('image.txt','w')

pixels = []

for x in f:
    pixels.append(bin_to_float(x))

i = 0
j = 0
k = 0

for i in range(pp):
    for j in range(pp):
        print(i,j, int(pixels[k]))
        blank_image[i, j] = (pixels[k], pixels[k], pixels[k])
        k = k + 1

# Write image
cv.imwrite('lalalal.jpg', blank_image)
f.close()
s.close()