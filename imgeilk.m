for i=1:256
    for j=1:256
        A(i,j)=(j-1);
        end
end
    for i=1:256
        for j=1:256
        dist=((i-128)^2+(j-128)^2)^(.5);
        if (dist<80)
        B(i,j)=255;
        else
            B(i,j)=0;
 
        end
        end
    end


for i=1:256
    for j=1:256
        C(i,j)=(A(i,j)*B(i,j))/255;
        end
end
imshow(C);
