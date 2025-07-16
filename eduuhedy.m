I = imread('1-300x243.png');
figure,
imshow(I);
title('Orginal Image');
C =~im2bw(I);
B = imfill(C,'holes');
label=bwlebel(B,8);
for j=1 : max(max(label))
% transverse grayscale image to binary scale 
[row,coll]=find(label==j);
len=max(row)-min(row)+2;
breadth=max(col)-min(col)+2 ; 
target=unit8(zeros([len braedth 3]));
sy = min(col)-1 ;
sx = min(col)-1 ; 