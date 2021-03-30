import struct
import numpy as np
import cv2 as cv

pp = 500
image1 = np.zeros((pp, pp, 3), np.uint8)
image2 = np.zeros((pp, pp, 3), np.uint8)

with open("fullex/Verilog.txt", "r") as f:
    lines = f.readlines()
with open("fullex/Verilog.txt", "w") as f:
    for line in lines:
        if line.strip("\n") != "  x":
            f.write(line)
f.close()

f1 = open("fullex/Verilog.txt", "r")
f2 = open("Dataset/Text/Pythonint2.txt","r")
Compare = open("Dataset/Text/Compare8b.txt","w")

pixelsverilog = []
pixelspython = []

for x1 in f1:
    pixelsverilog.append(int(x1))
for x2 in f2:
    pixelspython.append(int(x2))

i = 0
j = 0
k = 0
max = 0
 
for i in range(pp):
    for j in range(pp):
        image1[i, j] = (pixelsverilog[k], pixelsverilog[k], pixelsverilog[k])
        image2[i, j] = (pixelspython[k], pixelspython[k], pixelspython[k])
        #print(int(x2))
        Compare.write(str(abs(pixelsverilog[k]-pixelspython[k])) + '\n')
        if ((abs(pixelsverilog[k]-pixelspython[k]) > max )):
            max = abs(pixelsverilog[k]-pixelspython[k])
        k = k + 1

# Write image
print('Sai so lon nhat la:',max)
cv.imwrite('Dataset/Image_Vid/Verilog.jpg', image1)
cv.imshow('Dataset/Image_Vid/Verilog',image1)
cv.imwrite('Dataset/Image_Vid/Python.jpg', image2)
cv.imshow('Dataset/Image_Vid/Python',image2)
cv.waitKey()
cv.destroyAllWindows()
f1.close()
f2.close()