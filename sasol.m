%sağ sol aynalama yapma
im=imread('C:\Users\MAC\Desktop\görüntü işleme\hky.jpg');
im1=flip(im,1);
im2=flip(im,2);
subplot(131),imshow(im);
subplot(132),imshow(im1);
subplot(133),imshow(im2);