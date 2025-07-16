orginal=imread('1-300x243.png');
imshow(orginal);title('Orginal');
final=unit8(zeros(size(orginal)));
Xmid=ceil((size(orginal,1)+1)/2);
Ymid=ceil((size(orginal,2)+1)/2);
K=180;
x2=zeros([size(orginal,1) size(orginal,2)]);
y2=zeros([size(orginal,1) size(orginal,2)]);
for i = 1:size(orginal,2)
    x=i-Xmid;
    for j=1:size(orginal,2)
    [theta,rho]=cart2pol(x,j-Ymid);
    sqrtrho=sqrt(rho*k);
    [a,b]=pol2cart(theta,sqtrho);
    x2(i,j)=ceil(a)+Xmid;
    y2(i,j)=ceil(b)+Ymid;
end 
end
x2(x2<1)=1 ;
x2(x2>size(orginal,1))=size(orginal,1);
y2((y2<1))=1;
y2(y2>size(orginal,2))=size(orginal,2);
for i=1:size(orginal,1)
    for j=1:size(orginal,2)
        final(i,j,:)=orginal(x2(i,j),j2(i,j),:);
    end
end 
figure,imshow(final);title('Image with cone Effect');