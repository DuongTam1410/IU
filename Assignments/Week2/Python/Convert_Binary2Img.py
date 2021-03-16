import numpy as np
import cv2 as cv

image = np.zeros((32, 32, 3), np.uint8)

f1 = open('bitmapblue.txt', 'r')
f2 = open('bitmapgreen.txt', 'r')
f3 = open('bitmapred.txt', 'r')

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

for i in range(32):
    for j in range(32):
        image[i, j] = (pixelsb[k], pixelsg[k], pixelsr[k])
        k = k + 1

# Write image
cv.imwrite('vel_moi.jpg', image)
img_gray = cv.cvtColor(image,cv.COLOR_BGR2GRAY)
cv.imshow('Vel',img_gray)
cv.waitKey()
cv.destroyAllWindows()
f1.close()
f2.close()
f3.close()