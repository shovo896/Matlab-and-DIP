%Read the image
img=imread('Peepers.png');
%display the orginal image
imshow(img);
title('Orginal Result');
%Apply the Lapracian filter 
laplacian_filter=[0 -1 0; -1 4 -1 ;0 -1 0];
filtered_img=imfilter(img,laplacian_filter);

% display the filtered image 
subplot(1,2,2);
imshow(filtered_img,[]);
title('Laplacian Filtered Image');
 