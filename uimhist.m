close all ;
clear all ;
clc ;
I = imread("untitled1.jpg");
figure ,
subplot(211);
imshow(I),title('Orginal Image')
subplot(212);
imhist(I);
figure ,
I2 = histeq(I);
subplot(211)
imshow(I2);title('histrogram equalized image')
subplot(212);
imhist(I2);