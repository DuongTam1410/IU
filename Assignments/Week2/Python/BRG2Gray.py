import cv2 as cv
import numpy as np

#Read and show image
img = cv.imread('iu.jpg')
cv.imshow("Anhmau",img)
cv.waitKey()

#Convert BGR to Gray
img_gray = cv.cvtColor(img,cv.COLOR_BGR2GRAY)

#Resize image
img_gray_rs = cv.resize(img_gray,dsize=(500,500))
img_color_rs = cv.resize(img,dsize=(500,500))
cv.imwrite("velkoz_gray.jpg",img_gray_rs)
cv.imwrite("velkoz_color.jpg",img_color_rs)

#Save image
cv.imshow("Ảnh sau khi format",img_gray_rs)
cv.waitKey()
cv.destroyAllWindows()

