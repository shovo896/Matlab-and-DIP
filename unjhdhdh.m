% A program for perform histrogram 
% Equalization without histeq() function 
clc 
close all 
clear all 
I =imread("1-300x243.png");
h =zeros(1,256);
[r,c]=size(I);
no_of_pixels=r*c;
n = 0 : 255 ;title('histrogram plot without histeq() function');
% loop for travers 
for i = 1 : r 
    for j=1 :c
        h(I(i,j)+1)=h(I(i,j)+1)+1 ;
    end 
end 
% calculating probility 
for i = 1 :256 
    h(i)=h(i)/no_of_pixels;
end 
temp=h(1);
for i = 2 : 256 
    temp=temp+h(i);
    h(i)=temp ;
end 
stem(n,h);
drawnow limitrate ;
histrogram(I);