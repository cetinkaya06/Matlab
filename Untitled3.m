tom=imread('tom.png');
jerry=imread('jerry.png');
arkafon=imread('arkafon.png');
%jerry2=imresize(jerry,[321 426]);%imresize komutu tekrardan boyutlandırma jerryi 321 e426 boyutuna çeviriyor
%arkafon2=imresize(arkafon,[321 426]);
jerry2=imresize(jerry,[size(tom,1) size(tom,2)]);
arkafon2=imresize(arkafon,[size(tom,1) size(tom,2)]);%arkafonun satırları tom kadar sütunlarıda tom kadar olmalı
tomjerry2=tom+jerry2;
subplot(2,2,1);imshow(tom);title('tom');
subplot(2,2,2);imshow(jerry);title('jerry');
subplot(2,2,3);imshow(tomjerry2);('tomvejerry2');
beyaz=uint8(ones(size(tom)));%3 kanalıda 1den oluşan matris oluşturduk tom boyunda
%mask işleminde tom ve jeryynin olmadığı yerleri 255 yaptı diğer yerleri 0
%yaptık(piksel piksele bölme işlemi yaptı)
mask=beyaz./tomjerry2; %tom ve jerinin olduğu yerleri siyah yaptık arkası beyaz üzerine
arkaplan=uint8(mask&arkafon2);%ve işaretinin çıkışı ya sıfır yada beyaz verir (resimlerin matrislerinde her bir matrisine bakıyor 2 serimdede aynı matriste sayı değeri varsa 1 alıyor ama 1tanesinde 0 varsa 0 yap demektir.
%arkafon2de maskelediğimiz tom ve jerrynin yerini belirlemek için yaptık
%yani tom ve jerrynin yerlerini 0 yaptık (bunuda & ile yaptık)
sonuc=(arkaplan.*arkafon2)+tomjerry2+arkafon; %matematiksel işlemler yaparken nokta kullan lojik olarak yap demek

