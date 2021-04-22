# Convolutional Neural Network
## • Convolutional Neural Network (CNNs – Mạng nơ-ron tích chập) 
Là một trong những mô hình Deep Learning tiên tiến. Mạng CNN là một tập hợp các lớp Convolution chồng lên nhau và sử dụng các hàm nonlinear activation như ReLU để kích hoạt các trọng số trong các node. Mỗi một lớp sau khi thông qua các hàm kích hoạt sẽ tạo ra các thông tin trừu tượng hơn cho các lớp tiếp theo

![](https://images.viblo.asia/full/31db48c4-5df9-409b-8632-85d39196595b.jpeg)
## • Convolutional layer
- Là một cửa sổ trượt (Sliding Windows) trên một ma trận 
- Convolution hay tích chập là nhân từng phần tử bên trong ma trận kernel với ma trận ảnh ban đầu. Kết quả được một ma trận gọi là Convoled feature.
<img src="https://i1.wp.com/nttuan8.com/wp-content/uploads/2019/03/giphy.gif?resize=526%2C384&ssl=1">

## • Padding
- Mỗi lần thực hiện phép tính convolution xong thì kích thước ma trận Y đều nhỏ hơn X. Để ma trận Y thu được có kích thước bằng ma trận X => Thêm giá trị 0 ở viền ngoài ma trận X.
- Phép tính này gọi là convolution với padding=1. Padding=k nghĩa là thêm k vector 0 vào mỗi phía của ma trận.

<img src="https://i0.wp.com/nttuan8.com/wp-content/uploads/2019/03/c4.png?w=491&ssl=1">

## • Stride
- Stride=k (k > 1) thì ta chỉ thực hiện phép tính convolution trên các phần tử 𝑥(1+𝑖∗𝑘,1+𝑗∗𝑘). Ví dụ k = 2.

<img src="https://i0.wp.com/nttuan8.com/wp-content/uploads/2019/03/c4.png?w=491&ssl=1">


## • Convolutional layer tổng quát
- Convolutional layer áp dụng K kernel.

<img src="https://i2.wp.com/nttuan8.com/wp-content/uploads/2019/03/conv2-1.png?w=991&ssl=1">

## • Pooling layer
- Pooling layer thường được dùng giữa các convolutional layer, để giảm kích thước dữ liệu nhưng vẫn giữ được các thuộc tính quan trọng. Kích thước dữ liệu giảm giúp giảm việc tính toán trong model.

<img src="https://i1.wp.com/nttuan8.com/wp-content/uploads/2019/03/pooling_2.jpg?w=596&ssl=1">

## • ReLU
- Hàm ReLU được chọn do cài đặt đơn giản, tốc độ xử lý nhanh mà vẫn đảm bảo được tính toán hiệu quả. Phép tính toán của hàm ReLU chỉ đơn giản là chuyển tất cả các giá trị âm thành giá trị 0.
- Lớp ReLU được áp dụng ngay phía sau lớp tích chập, với đầu ra là một ảnh mới có kích thước giống với ảnh đầu vào, các giá trị điểm ảnh cũng hoàn toàn tương tự, trừ các giá trị âm đã bị loại bỏ.
###                𝑓(𝑥) = 𝑚𝑎𝑥(0, 𝑥)

## • Fully connected layer
- Sau khi ảnh được truyền qua nhiều convolutional layer và pooling layer thì model đã học được tương đối các đặc điểm của ảnh (ví dụ mắt, mũi, khung mặt,…) thì tensor của output của layer cuối cùng, kích thước H*W*D, sẽ được chuyển về 1 vector kích thước (H*W*D)

<img src="https://i1.wp.com/nttuan8.com/wp-content/uploads/2019/03/flattern.png?resize=768%2C367&ssl=1">

