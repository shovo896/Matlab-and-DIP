orginal=imread("1-300x243.png");
imshow(orginal);title('orginal Image');
m=6;
n=7;
BlurredImage=unit8(zeros([size(orginal,1)-m,size(orginal,2)-n,3]));
for i = 1:(size(orginal,1)-m)
    for j=1:(size(orginal,2))-n)
        temp=orginal(i:i+m-1,j:j+n+1,:);
        newX=ceil(rand(1)*m);
        newY=ceil(rand(1)*n);
        BlurredImage(i,j,:)=temp(newX,.newY,:);
    end 
end 
figure,imshow(BlurredImage);title('Blurry Image');
imwrite(BlurredImage,'Blurry Image');