img=imread("WIN_20250412_20_04_41_Pro.jpg");
r=double(img);
G=0.6;
S=C*(r.^G);
T=255/(C*(255.^G));
o=uint8(T*S);
figure,imshow(O);title('Power Law Transformation');