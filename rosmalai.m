I = imread('GFGlogo.jpeg');
J=rgb2ntsc(I);
figure;
imshow(J);
k = ntsc2rgb (J);
figure ;
imshow(k);