I= imread('WhatsAppImage20220209at115929PM-300x152.jpeg');
Ig = rgb2gray(I);
T= graythresh(Ig);
Tg=T*255;
m= Ig > Tg ;
figure,imshow(m)
I1=I(:,:,1);
I2 = I(:,:,2);
I3=I(:,:,3);
I1(~m)= 0 ;
I2(~m)= 0 ;
% in background pixels,take the third 
% channel and colour the blue 
I3(~m) = 255;
In=cat(3,I1,I2,I3);
figure ,imshow(In);