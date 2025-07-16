I =rgb2gray(imread("WIN_20250412_20_04_41_Pro.jpg"));
subplot(2,4,1);
imshow(I);
title("Gray sacle Image");

%Sobel Edge Detection 
J=edge(I,'sobel');
subplot(2,4,2),
imshow(J);
title("sobel");

%prewitt Edge detectation 
K=edge(I,'prewitt');
subplot(2,4,3);
imshow(K);
title("Prewitt");
% Robert Edge detection 
L=edge(I,'Roberts');
subplot(2,4,3),
imshow(L);
title("Robert");
% Log Edge Detection 
M=edge(I,'log');
subplot(2,4,6),
imshow(M);
title("Log");
%Zerocross Edge Detection 
M=edge(I,'Zerocross');
subplot(2,4,6),
imshow(M);
title("zeroCross");
% xanny Edge Detection 
N=edge(I,'canny');
subplot(2,4,7),
imshow(N);
title("Canny");