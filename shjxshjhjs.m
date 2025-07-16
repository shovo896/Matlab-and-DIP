img=imread('untitled1.jpg');

m=6;
n=7;
for p=1:3 
    for i =1:size(img,1)-m
        for j=1:size(img,2)-n 
            mask= img(i:i+m-1,j:j+n-1,p);
            his=zeros(1,256);
            for k=1:(m*n)
                his(mask(k)+1)=his(mask(k)+1)+1;
            end 
[max_val,max_index]=max(his);
wing(i,j,p)=max_index-1 ;
        end 
    end 
end 
figure,imshow(wimg)