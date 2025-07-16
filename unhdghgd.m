clc ;
clear all 
close all 
a=input('Enter an  array');
b=[];
c=1;
for i=1:length(a)-1
    if(a(i))==a(i+1)
        c=c+1;
    else
        b=[b,c,a(i),];
        c=1;
    end 
end 
    b=[b,c,a(length(a))];
    disp(b);