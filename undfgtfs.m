img=imread('Screenshot (209).png');
% covvert the image to grayscale 
if size(img,3)==3 
    img=rgb2gray(img);
end 
% compute the 2-D of the image 
dct_img=dct2(double(img));
%Resize the DCT coefficients matrix to a smaller size 
% lets resize it to half orginal size 
new_size=size(img)/2;
dct_resized=imresize(dct_img,new_size);
% compute the inverse 2-D to get the resized image 
resized_img=unit8(idct2(dct_resized,size(img,1),size(img,1),size(img,2)));
% Display the orginal and resized images 
subplot(1,2,1);
imshow(img);
title('Orginal Image');
subplot(1,2,2);
imshow(resized_img);
title('Resized Image using 2-D IDCT');