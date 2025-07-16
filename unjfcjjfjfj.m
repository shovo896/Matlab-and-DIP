input_image=imread('1-300x243.png');
input_image=(I);
I=unit8(I);
I=rgb2gray(I);
filtered_image=zeros(size(I));
Mx=[1 0 -1 ;-2 0 2 ;-1 0 1];
My=[-1 2 -1 0 0 0; 1 2 1];
for i = 1:size(input_image,1)-2 
    for j=1:size(input_image,2)-2 
        Gx=sum(sum(Mx.*input_image(i:i+2,j:j+2)));
        Gy=sum(sum(My.*input_image(i:i+2,j:j+2)));
        filtered_image(i+1,j+1)=sqrt(Gx.^2+Gy.^2);
    end
end 
filtered_image=unit8(filtered_image);
figure,imshow(filtered_image);title('Fitered Image');
thresholdValue=100;
output_image=max(filtered_image,thresholdValue);
output_image(output_image == round(thresholdValue))==0 ;
output_image=im2bw(output_image);
figure,imshow(output_image);title('Edge Dtected Image');