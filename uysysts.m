X1=imread('WIN_20250412_20_04_41_Pro.jpg');
Y1=imread('462543001_8615943498521709_7890765814037169411_n.jpg');
X=X1(:,:,1);
Y=Y1(:,:,1);
corr_map=zeros([size(X,1) ,size(X,2)]);
for i=1:size(X,1)-size(Y,1)
for j=1:size(X,1)-size(Y,1)
%construct the correlation map
corr_map(i,j)=corr2(X(i:i+size(Y,1)-1,j:j+size(Y,2)-1,Y));
end 
end 
maxpt = max(corr_map);
%Find the maximum value
maxpt=max(corr_map(:));
[a,b]=find(corr_map==maxpt);
%Display the image from the template 
figure,imagesc(Y1);title('Target Image');
colormap(gray);
grayX=rgb2gray(X1);
Res=X;
Res(:,:,1)=grayX;
Res(:,:,2)=grayX;
Res(:,:,3)=grayX;
Res(a:a+size(Y,1))-1,
b:b+size(Y,2)-1,:)
=X1(a:a+size(Y,1)-1,
b:b+size(Y,2)-1,:);
figure,imagesc(Res);

