clc ;
close all ;
clear all ;
mycolourimage= imread('462543001_8615943498521709_7890765814037169411_n.jpg')
myimage= rgb2gray(mycolourimage)
sobelhz= edge(myimage,'sobel','horizontal');
subplot(3,3,2);
imshow(sobelhz,[]);title('Sobel-Horizontal Edges');



sobelvrt=edge(myimage,'sobel','vertical') ;
subplot(3,3,3);
imshow(sobelhz,[]);title('Sobel-Vertical Edges');


sobelvrthz=edge(myimage,'sobel','both');
subplot(3,3,4);
imshow(sobelvrthz,[]); title('Sobel-All Edges');