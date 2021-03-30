import numpy as np
import cv2 as cv
import struct
pr = 500
count = 0
a = 0
image = np.zeros((pr, pr, 3), np.uint8)

def tranlate(f4,count2):
    pixels = []
    for x1 in f4:
        pixels.append(int(x1))

    i = 0
    j = 0
    k = 0

    for i in range(500):
        for j in range(500):
            image[i, j] = (pixels[k], pixels[k], pixels[k])
            k = k + 1
    cv.imwrite('ImgAfterTrans/Img%la.jpg'%count2,image)

while (a < 25): 
    f4 = open("tras%la.txt" %count,"r")
    tranlate(f4,a)
    count = a
    a += 1


o = 0
filenames = []
while (o<25):
    filenames.append("ImgAfterTrans/Img%la.jpg"%o)
    o = o + 1

import imageio
images = []
for filename in filenames:
    images.append(imageio.imread(filename))
imageio.mimsave('movie.mp4', images)

cap = cv.VideoCapture('movie.mp4')
count = 0

while(cap.isOpened()):
  # Capture frame-by-frame
  ret, frame = cap.read()
  if ret == True:
    # Display the resulting frame
    #print(grayscale_frame)
    cv.imshow('origin video', frame)
    # Press Q on keyboard to  exit
    if cv.waitKey(25) & 0xFF == ord('q'):
      break
  else: 
    break
cap.release()
cv.destroyAllWindows()

# Write image
#cv.imwrite('Dataset/Image_Vid/GrayPython.jpg', image)
#cv.imshow('GrayPythonint',image2)
cv.waitKey()
cv.destroyAllWindows()
f4.close()