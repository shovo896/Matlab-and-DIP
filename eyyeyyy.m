img=imread('WIN_20250412_20_04_41_Pro.jpg');
r=double(img);
C=1;
S=C*log(1+r);
T=255/(C*log(256));
B=uint8(T*S);
figure,imshow(B);title('Log Transformation');