import numpy as np
import cv2 as cv

def rgb2gray(r,g,b):
    gray = (0.2989*r + 0.5870*g + 0.1140*b) / 255
    return gray

image = np.zeros((500, 500, 3), np.uint8)

f1 = open('Dataset/Text/blue8b.txt', 'r')
f2 = open('Dataset/Text/green8b.txt', 'r')
f3 = open('Dataset/Text/red8b.txt', 'r')
f4 = open('Dataset/Text/GrayPython8b.txt', 'w')

pixelsb = []
pixelsg = []
pixelsr = []

for x1 in f1:
    pixelsb.append(int(x1,2))
for x2 in f2:
    pixelsg.append(int(x2,2))
for x3 in f3:
    pixelsr.append(int(x3,2))

i = 0
j = 0
k = 0

for i in range(500):
    for j in range(500):
        image[i, j] = (pixelsb[k], pixelsg[k], pixelsr[k])
        f4.write(str(int(rgb2gray(pixelsb[k]*255, pixelsg[k]*255, pixelsr[k]*255)))+'\n')
        k = k + 1

# Write image
#cv.imwrite('vel_moi.jpg', image)
#cv.imshow('Mau',image)
b,g,r = cv.split(image)
img_gray = rgb2gray(r, g, b)
cv.imshow('Gray',img_gray)
cv.waitKey()
cv.destroyAllWindows()
f1.close()
f2.close()
f3.close()
f4.close()