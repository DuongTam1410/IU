import numpy as np
import cv2

def rgb2gray(r,g,b):
    gray = (0.2989*r + 0.5870*g + 0.1140*b) / 255
    return gray

cap = cv2.VideoCapture('videocutter.mp4')

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
    # Press Q on keyboard to  exit
    if cv2.waitKey(25) & 0xFF == ord('q'):
      break
  else: 
    break
cap.release()
cv2.destroyAllWindows()