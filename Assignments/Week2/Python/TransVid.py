import numpy as np
import cv2 as cv
import struct

image = np.zeros((500, 500, 3), np.uint8)

f1 = open('Dataset/TextforVid/product8888', 'r')

pixels = []

for x1 in f1:
    pixels.append(x1)

i = 0
j = 0
k = 0
a = 0
while(a<=24):
    for i in range(500):
        for j in range(500):
            image[i, j] = pixels[k], pixels[k], pixels[k]
            k = k + 1
    cv.imshow('GrayPython',image)
    cv.waitKey(500)
    cv.destroyAllWindows()
    a = a + 1
    


# Write image
#cv.imwrite('Dataset/Image_Vid/VideoGray.jpg', image)
#cv.waitKey(500)

f1.close()
