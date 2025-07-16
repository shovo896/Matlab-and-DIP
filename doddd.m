clc ;
close all ;
clear all ;
mycolourimage= imread('462543001_8615943498521709_7890765814037169411_n.jpg')
myimage= rgb2gray(mycolourimage)
sobelhz= edge(myimage,'sobel','horizontal');
subplot(3,3,2);
imshow(sobelhz,[]);title('sobel-Horizontal Edges');



sobelvrt=edge(myimage,'sobel','vertical') ;
subplot(3,3,3);
imshow(sobelhz[]);title('sobel-vertical edges');


sobelvrthz=edge(myimage,'sobel','both');
subplot(3,3,4);
imshow(sobelvrthz,,[]); title('sobel-All edges');