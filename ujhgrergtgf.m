I=imread('1-300x243.png');
figure,
imshow(I);
title('Orginal Image');
C=~im2bw(I);
B=imfill(C,'holes');
label=bwlabel(B,8);
for j=1:max(max(label))
[row,col]=find(label==j)
len=max(row)-min(row)+2;
breadth=max(col)-min(row)+2 ;
target=unit8(zeros([len breadth 3]));
sy=min(col)-1 ;
sx=min(row)-1;
for i = 1:size(row,1)
    x=row(i,1)-sz;
    y=col(i,1)-sy;
    target(x,y,:)=I(row(i,1),col(i,1),:);
end
mytitle=strcat('Object Number:',num2str(j));
figure
imshow(target);
title(mytitle);
end