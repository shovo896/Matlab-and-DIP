img=imread('Screenshot (209).png');
% convert to grayscale if necessary 
if size (img,3)==3 
    img=rgb2gray(img);
end 
% compute 2-D DCT 
dct_img=dct2(double(img));

% set a threshold to remove high freqiuences 

threshold = 50 ;
dct_img_thresh=dct_img;
dct_img_thresh(threshold+1:end,:)=0;
dct_img_thresh(:,threshold+1:end)=0;
% compute the inverse 2-D DCT to get the filtered image 
filtered_img=uint8(idct2(dct_img_thresh));

%display the orginal and filtered images 
figure ;
subplot(1,2,1);
imshow(img);
title('Orginal Image ');
 
subplot(1,2,2);
imshow(filtered_img);
title('Filtered Image');