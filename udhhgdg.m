clc 
claar all
close all 
a=input('Enter an  array');
b=[];
for i=1:2:length(a)
    b=[b a(i)];
end 
c=[];
for i=2:2:length(a)
    c=;
end 
u=[];
for i=1:length(b)
    n=b(i);
    r=c(i);
    for q=1:n
        u=[u r];
    end 
end 