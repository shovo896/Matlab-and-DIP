clc ;
close all ;
clear all ;
I =imread("image_app_24.png");
myimage=rgb2gray(I);
subplot(2,2,1);
imshow(myimage);title('Orginal Image');
% Apply Sobel Oprerator 
%Display only the horizontal image 
sobelhz=edge(myimage,'sobel','horizontal');
subplot(3,3,2);
imshow(sobelhz,[]);title('Sobel-Horizontal Edges');

%Apply Sobel Edges 
%Display only the vertical Edges
sobelvrt=edge(myimage,'sobel','vertical');
subplot(3,3,3);
imshow(sobelhz,[]);title('sobel-Vertical image');
%Apply sobel operator 
%Display both horizontal and vertical Edges 
sobelvrthz=edge(myimage,'sobel','both');
subplot(3,3,4);
imshow(sobelvrthz,[]);title('Sobel - All edges');