background=imread('arkafon.png');
t=imread('tom.png');
j=imread('jerry.png');
o=imresize(j,[size(t,1) size(t,2)]);
arkafon2=imresize(arkafon,[size(t,1) size(t,2)]);%arkafonun satırları tom kadar sütunlarıda tom kadar olmalı
o=t+j2;
background=imresize(background,[size(o,1),size(o,2)]);
Im3=uint8(zeros(size(o)));
whitelmg=uint8(ones(o));
mask=whitelmg./o;
im3=whitelmg./o;
figure,imshow(mask);
finalmg=(background.*im3)+o;
figure,imshow(finallmg)
