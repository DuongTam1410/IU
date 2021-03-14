import cv2 as cv
import numpy as np

img = cv.imread('Velkoz.jpg')
cv.imshow("Ảnh màu",img)
cv.waitKey()

img_gray = cv.cvtColor(img,cv.COLOR_BGR2GRAY)
img_gray_rs = cv.resize(img_gray,dsize=(500,400))
cv.imwrite("velkoz_gray.jpg",img_gray_rs)
cv.imshow("Ảnh sau khi format",img_gray_rs)
cv.waitKey()
cv.destroyAllWindows()

