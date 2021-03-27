import struct
import numpy as np
import cv2 as cv

def bin_to_float(binary):
    return struct.unpack('!f', struct.pack('!I', int(binary, 2)))[0]

with open("fullex/Verilog.txt", "r") as f:
    lines = f.readlines()
with open("fullex/Verilog.txt", "w") as f:
    for line in lines:
        if line.strip("\n") != "x0000000000000000000000000000000":
            f.write(line)
f.close()

pp = 500
image1 = np.zeros((pp, pp, 3), np.uint8)
image2 = np.zeros((pp, pp, 3), np.uint8)

f1 = open("fullex/Verilog.txt", "r")
f2 = open("Dataset/Text/Python.txt","r")
Compare = open("Compare.txt","w")

pixelsverilog = []
pixelspython = []

for x1 in f1:
    pixelsverilog.append(bin_to_float(x1)*255)
for x2 in f2:
    pixelspython.append(bin_to_float(x2))

i = 0
j = 0
k = 0
max = 0
 
for i in range(pp):
    for j in range(pp):
        image1[i, j] = (pixelsverilog[k], pixelsverilog[k], pixelsverilog[k])
        image2[i, j] = (pixelspython[k], pixelspython[k], pixelspython[k])
        Compare.write(str(abs(pixelsverilog[k]-pixelspython[k])) + '\n')
        if ((abs(pixelsverilog[k]-pixelspython[k]) > max )):
            max = abs(pixelsverilog[k]-pixelspython[k])
        k = k + 1

# Write image
print('Sai so lon nhat la:',max)
cv.imwrite('Verilog.jpg', image1)
cv.imshow('Verilog',image1)
cv.imwrite('Python.jpg', image2)
cv.imshow('Python',image2)
cv.waitKey()
cv.destroyAllWindows()
f1.close()
f2.close()