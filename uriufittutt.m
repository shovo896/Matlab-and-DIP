clc ;
close all ;
clear all ;
mycolourimage=imread("untitled1.jpg");
myimage=rgb2gray(mycolourimage);
subplot(3,3,1);
imshow(myimage);title('Orginal Image');
%Apply prewitt Operator 
%Display both horizontal and vertical image 
prewittsedg=edge(myimage,'prewitt');
subplot(3,3,6),
imshow(prewittsedg,[]);title('Prewitt-Edges');