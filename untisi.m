pad1 = size(corr,1)-1 ;
pad2 = size(corr,2)-1 ;
output= unit8(zeros(size(X)));
if(size(corr,1)==1)
    Y = zeros(size(X,1),size(X,2)+pad2);
    n = 0 ;
    m = floor(size(corr,2)/2);
    sz1 = size(Y,1);
    sz2 = size(Y,2)-pad2 ;
else if(size(corr,2) ==1)
        Y = zeros(size(X,1)+pad1,size(X,2));
        n = floor(size(corr,1)/2);
        m= 0 ;
        sz1 = size(Y,1)-pad1 ;
        sz2 = size(Y,2);
else 
    Y = zeros(size(X,1)+pad1,size(X,2)+pad2);
    n= floor(size(corr,1)/2);
    m = floor(size(corr,2)/2);
    sz1= size(Y,1)-pad1 ; 
    sz2 = size(Y,2)-pad2;
end 
for i = 1 : size(X,1)
for j = 1 ; size(Y,1)
Y(i+n ,j+m) = X(i,j);
end 
end 
szcorr1=size(corr,1);
szcorr2=size(corr,2);
for i = 1 : sz1 
for j= 1 : sz2 
sum = 0 ;
n = i ;
m = j ;
for a = 1 : szcorr1 
for b = 1 : szcorr2 
calculated is the weighted sum of the neighbourhood pixsels. 
sum =sum+(Y(n,m)*corr(a,b));
m = m+1 ;
end 
m=j; 
n = n+ 1 ;
end 
output(i,j)=sum ;
end 
end 
figure , imshow(output);
title('After line filtering'); 
