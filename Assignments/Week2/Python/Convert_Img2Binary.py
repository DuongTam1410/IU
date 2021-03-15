 
import cv2 as cv
import numpy

img = cv.imread('velkoz_color.jpg')
img_width = img.shape[0]
img_height = img.shape[1]

i = 0
j = 0
opf1 = open('bitmapred.txt','w')
opf2 = open('bitmapgreen.txt','w')
opf3 = open('bitmapblue.txt','w')
for i in range(img_height):
    for j in range(img_width):
        r = img[i, j][2]
        g = img[i, j][1]
        b = img[i, j][0] 

        print(bin(r)[2:].zfill(8),bin(g)[2:].zfill(8),bin(b)[2:].zfill(8))
        opf1.write(bin(r)[2:].zfill(8))
        opf1.write("\n")

        opf2.write(bin(g)[2:].zfill(8))
        opf2.write("\n")

        opf3.write(bin(b)[2:].zfill(8))
        opf3.write("\n")
opf1.close()
opf2.close()
opf3.close()