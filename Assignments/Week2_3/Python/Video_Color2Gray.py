import numpy as np
import cv2
import time
import struct

def rgb2gray(r,g,b):
    gray = (0.2989*r + 0.5870*g + 0.1140*b) / 255
    return gray

def float_to_bin(num):
    return format(struct.unpack('!I', struct.pack('!f', num))[0], '032b')

cap = cv2.VideoCapture('Dataset/Image_Vid/videocutter.mp4')
count = 0

while(cap.isOpened()):
  # Capture frame-by-frame
  ret, frame = cap.read()
  if ret == True:
    # Display the resulting frame
    b,g,r = cv2.split(frame)
    grayscale_frame = rgb2gray(r, g, b) 
    #print(grayscale_frame)
    cv2.imshow('origin video', frame)
    cv2.imshow('grayscale video', grayscale_frame)
    new_h = 500
    new_w = 500
    resize = cv2.resize(frame, (new_w, new_h))
    cv2.imwrite("Dataset/Frame/Img%la.jpg" % count, resize)
    Green = open("Dataset/TextforVid/blue/blue%la.txt" %count,"w")
    Blue  = open("Dataset/TextforVid/green/green%la.txt" %count,"w")
    Red   = open("Dataset/TextforVid/red/red%la.txt" %count,"w")
    Gray  = open("Dataset/TextforVid/gray/gray%la.txt" %count,"w")
    count += 1
    for i in range(new_h):
        for j in range(new_w):
            Green.write(bin(g[i][j])[2:].zfill(8) + '\n')
            Red.write(bin(r[i][j])[2:].zfill(8) + '\n')       
            Blue.write(bin(b[i][j])[2:].zfill(8) + '\n')
            Gray.write(float_to_bin(grayscale_frame[i][j]) + '\n')  
    # Press Q on keyboard to  exit
    if cv2.waitKey(25) & 0xFF == ord('q'):
      break
  else: 
    break
print("Height = ",height,"Width = ",width)
print("Frame = ",count)
cap.release()
cv2.destroyAllWindows()

