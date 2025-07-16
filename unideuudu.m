A=imread('untitled1.jpg');
B=unit8(zeros(size(A)));
A=im2bw(A);
for i=1:size(A,1)
    for j=1:size(A,2)
        if(A(i,j)==0)
            B(i,j,:)=255;
            if(A(i,j)==255)
                B(i,j,:)=0;
            end 
        end 
    end 
end 
figure
imshow(A);
figure
imshow(B);