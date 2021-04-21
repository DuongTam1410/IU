import numpy as np
import cv2
import time
import struct

cap = cv2.VideoCapture('movie.mp4')
count = 0

while(cap.isOpened()):
  # Capture frame-by-frame
  ret, frame = cap.read()
  if ret == True:
    # Display the resulting frame
    #print(grayscale_frame)
    cv2.imshow('origin video', frame)
    # Press Q on keyboard to  exit
    if cv2.waitKey(25) & 0xFF == ord('q'):
      break
  else: 
    break
cap.release()
cv2.destroyAllWindows()

