 
import cv2 as cv
import numpy
import struct

img = cv.imread('velkoz_color.jpg')
img_width = img.shape[0]
img_height = img.shape[1]

def float_to_bin(num):
    return format(struct.unpack('!I', struct.pack('!f', num))[0], '032b')

i = 0
j = 0
k = 0

opf1 = open('iredfloat.txt','w')
opf2 = open('igreenfloat.txt','w')
opf3 = open('ibluefloat.txt','w')

for i in range(img_height):
    for j in range(img_width):
        r = img[i,j][2] / 255
        g = img[i,j][1] / 255
        b = img[i,j][0] / 255

        #print(float_to_bin(r),float_to_bin(g),float_to_bin(b))
        opf1.write(float_to_bin(r))
        opf1.write("\n")

        opf2.write(float_to_bin(g))
        opf2.write("\n")

        opf3.write(float_to_bin(b))
        opf3.write("\n")
opf1.close()
opf2.close()
opf3.close()