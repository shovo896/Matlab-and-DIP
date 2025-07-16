clc 
close all 
clear all 
warning off ;
I=imread('1-300x243.png');
h = zeros(1,256);
%return the array 
%where the elements value is zero 
% transversing the array of an image
[r,c] = size(I);
n = 0 : 255 ;
% for loop for travelers 
for i = 1 :r 
    for j = 1 :c  
        h(I(i,j)+1)=h(I(i,j)+1)+1 ;
    end 
    %plot the data sequence 
stem(n, h);
drawnow limitrate ;
end 
figure;
histrogram(I);