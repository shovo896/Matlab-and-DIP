I=imread("untitled1.jpg");
subplot(2,3,1);
imshow(I);
title("Orginal Image");

%Detailed image 
se=strel("line",7,7);
dilate=imdilate(I,se);
subplot(2,3,2),
imshow(dilate);
title("Dilate image");
%Erodded Image 
erode=imrode(I,se);
subplot(2,3,3),
imshow(erode),
title("Eroded image");
%Opened image
open=imopen(I,se);
subplot(2,3,4),
imshow(open);
title("opened image");
%Closed image 
close=imclose(I,se);
subplot(2,3,5),
imsclose(close);
title("closed image");