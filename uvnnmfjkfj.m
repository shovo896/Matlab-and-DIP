clc ;
close all ;
clear all ;
i = imread("untitled1.jpg");
imshow(i)
Rmin=10 
Rmax=50 ;
[centersDark1,radiiDark11]=imfindcircles(i,[Rmin Rmax],'ObjectPolarity','dark','sesitivity',0.92);
viscircles(centerDrak1,radiiDark1,'LineStyle','---')