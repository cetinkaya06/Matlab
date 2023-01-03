background=imread('C:\Users\MAC\Desktop\görüntü işleme\back.jpg');
A=imread('C:\Users\MAC\Desktop\görüntü işleme\jerry1.jpg');
B=imread('C:\Users\MAC\Desktop\görüntü işleme\tomm1.jpg');

A=imresize(A,[300 300]);
B=imresize(B,[300 300]);
object=A+B;
img3=uint8(zeros(size(object)));
whiteimg=uint8(ones(size(object)));
mask=whiteimg./object;
img3=uint8(mask&img3);
figure,imshow(mask);
finalimg3=(img.*img3)+object;
figure,imshow(finalimg)

