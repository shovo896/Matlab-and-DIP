clc ;
clear all ;
close all ;
mycolourimage=imread('WIN_20250412_20_04_41_Pro.jpg');
myimage=rgb2gray(mycolourimage);
subplot(3,2,3);
imshow(myimage);title('Orginal Image');

prewittsedg=edge(myimage,'prewitt');
subplot(3,3,6);
imshow(prewittsedg,[]);title('prewitt-Edges');