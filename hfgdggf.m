clc ;
close all ;
clear all ;
h(I1);
it2=im2bw(I1,bw);
figure,imshowI1=imread("1-300x243.png");
imshow(I1);
figure,imshist(I1);
T2=graythres(it2);