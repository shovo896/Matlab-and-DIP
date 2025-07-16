% Matlab program to implement 
% to above approch 
clc 
x=input('Enter the first sequence:');
nx = input('Enter the Time Index sequernce:');
h = input('Enter the second sequence:');
nh=input('Enter the Time Index Sequence');
% sending parameters to a separate function 
[y,ny]=findconv(x,nx,h,nh);
figure ;
stem(ny,y);
xlabel('Time');
ylabel('Amplitude');
title('Linear Convolution');
disp(y);
disp(ny);
%Function to find the length of our output
function [y,ny]=findconv(x,nx,h,nh)
    nybegin=nx(1) + nh(1);
    nyend=nx(length(nx))+nh(length(nh));
    ny=nybegin: nyend ;

% calling a function within a function 
    y = calconv(x,h);
end 
% Here is where the summation is calculated 
function[y]=calconv(x,h)
    l1 =length(x);
    l2=length(h);
    N=l1+l2-1 ;
    for n = 1 : 1 : N 
        y(n)= 0 ;
        for k = 1 : 1: l1
            if (n-k+1 >=1 & n-k+1<=l2)
                y(n)=y(n) +x(k) *h(n-k+1)
            end
        end 
    end
end
