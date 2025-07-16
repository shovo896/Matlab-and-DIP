I =imread('1-300x243.png');
figure,
imshow(I);
title('orginal Image');
C=~im2bw(I);
B=imfill(C,'holes');
label=bwlabel(B,8);
for j =1:max(max(label))
[row,col] =find(label==j);
len=max(row)-min(row)+2;
breadth=max(col)-min(col)+2;
target=uint8(zeros([len breadth 3]));
sy =min(col)-1;
sx=min(col)-1;