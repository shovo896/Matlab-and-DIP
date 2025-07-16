pad1 = size(corr,1)-1 ; 
pad2 = size(corr,2)-1 ;
output=unit8(zeros(size(A)));
if (size(zeros(size(A))));
    B= zeros(size(A,1),size(A,2)+pad2)_;
    m=0 ;
    n = floor(size(corr,2)/2);
    sz1 = size(B,1);
    sz2 = size(B,2)-pad2 ;
else if (size (corr,2)== 1)
        B= zeros(size(A,1)+pad1,size(A,2));
        m = floor(size(corr,1)/2);
        n = 0 ;
        sz1 = size(B,1)-pad1 ;
        sz2 = size(B,2);
else :
    B = zeros(size(B,1)+pad1,size(A,2)+pad2);
    m = floor(size(corr,1)/2);
    n = floor(size(corr,2)/2);
    sz1 = size(B,1)-Pad1 ; 
    sz2 = size(B,2)- pad2 ; 
end 
for i = 1 : size(A,1);
for j = 1 : size(A ,2);
B(i+n, j+m) = A(i,j);
end 
end 
szcorrr1=size(corr,1);
szcorr2=size(corr,2);
for i = 1 :sz1 
for j1 : sz2 
sum = 0 ;
m= i ; 
n= j ; 
for x = 1 : szcorr1 
for j = 1 : sxzcorr2 
calculated is the weioghted sum of the neighbourhood pixels .
sum = sum+(B(m,n)*corr(x,y));
n = n+1 ; 
end 
n = j ; 
m = m+1 ; 
end 
output(i,j) = sum ;
end 
end 
figure,imshow(output);
title('After linear filtering'); 
