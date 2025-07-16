img = imread('WhatsAppImage20220209at115929PM-300x152.jpeg');
I = double(img)/255 ;
R=I(:,:,1);
G=I(:,:,2);
B=I(:,:,3);
HSV=rgb2hsv(img);
H=HSV(:,:,1);
S=HSV(:,:,2);

I= sum(I,3)./3 ;
HSI=zeros(size(img));
HSI(:,:,1)=H;
HSI(:,:,2) = S;
HSI(:,:,3) = I ;
figure, imshow(HSI);title('HSI Image');