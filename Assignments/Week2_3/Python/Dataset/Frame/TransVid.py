import imageio
images = []
filenames = ["Img0.jpg","Img1.jpg","Img2.jpg","Img3.jpg","Img4.jpg","Img5.jpg","Img6.jpg","Img7.jpg","Img8.jpg","Img9.jpg","Img10.jpg","Img11.jpg","Img12.jpg","Img13.jpg","Img14.jpg","Img15.jpg","Img16.jpg","Img17.jpg","Img18.jpg","Img19.jpg","Img20.jpg","Img21.jpg","Img22.jpg","Img23.jpg","Img24.jpg"]
for filename in filenames:
    images.append(imageio.imread(filename))
imageio.mimsave('movie.mp4', images)



