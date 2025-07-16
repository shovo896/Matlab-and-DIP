clc ;
close all ;
clear all ;

mycolourimage=imread('WIN_20250412_20_04_41_Pro.jpg');
myimage=rgbtogray(mycolourimage);
subplot(2,3,1);
imshow(myimage);title('Orginal Image');


f=fspecial('laplacian');
lapedg=imfilter(myimage,f,'symmetric');
subplot(3,3,7);
imshow(lapedg,[]);title('Laplacian Filter');


