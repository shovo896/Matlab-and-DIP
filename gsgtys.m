clc ;
close all ;
clear all ;
mycolourimage=imread('WIN_20250412_20_04_41_Pro.jpg');
myimage=rgb2gray(mycolourimage);
subplot(3,3,1);
imshow(myimage);title('orginal Image');

%Apply sobel operator 
%Diplay only the hiorizontal edges 
sobelhz=edge(myimage,'sobel','horizontal');
subplot(3,3,2);
imshow(sobelhz,[]);title('Sobel-Horizontal Edges'));
sobelvrt=edge(myimage,'sobel','vertical');
subplot(3,3,3);
imshow(sobelhz,[]);title('sobel-vertical Edges');
sobelvrthz=edge(myimage,'sobel','both');
subplot(3,3,4);
imshow(sobelhrtz,[]);tgitle('sobel-All edges');
