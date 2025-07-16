I = imread("rgb-colors-crossing-02-5714560.jpg");
figure ;
subplot(2,2,1);
imshow(I);
xlabel('orginal image');
grid on ;
R=I(:,:,1);
subplot(2,2,2);
imshow(R);
xlabel('Red components is extracted')
grid on ;
G = I(:,:,2);
subplot(2,2,3);
imshow(G);
xlabel('Green components are extracted')
B=I(:,:,3);
subplot(2,2,4);
imshow(B);
xlabel('Blue component is extracted')
grid on ;




