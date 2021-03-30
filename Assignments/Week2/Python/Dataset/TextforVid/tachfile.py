import cv2 as cv
import numpy

f1 = open('Vid.txt','r')

i = 1
a = 1
count = 0
pixels = []

for x1 in f1:
    pixels.append(x1)

while (a <= 25):
    Green = open("tras%la.txt" %count,"w")
    if (a == 0) and (a == 1):
        k = 250000
    else:
        k = 250000*a

    while (i < k):
        Green.write(pixels[i])
        i = i + 1
    count = count + 1
    print(a)
    a = a + 1

filenames = ['tras0.txt','add0.txt']
with open('trans0.txt', 'w') as outfile:
    for fname in filenames:
        with open(fname) as infile:
            for line in infile:
                outfile.write(line)

f1.close()
