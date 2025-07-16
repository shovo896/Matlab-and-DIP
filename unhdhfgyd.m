I =rgb2gray(imread("1-300x243.png"));
subplot(2,4,1),
imshow(2,4,1),
title("Gray Scale ");

%Sobel Edge Dectector 
J=edge(I,'sobel');
subplot(2,4,2),
imshow(J);
title("sobel");
%Prewitt Edge detectetor 
k=edge(I,'Roberts');
subplot(2,4,4),
imshow(k);
title("prewitt");
%Robert Edge Detection 
L=edge(I,'Roberts');
subplot(2,4,4),
imshow(L);
title("Log");
%Zero cross Edge Detection 
M=edge(I,'zerocross');
subplot(2,4,6),
imshow(M);
title("Zerocross");
%Cross Edge Detection 
N=edge(I,'canny');
subplot(2,4,7),
imshow(N);
title("Canny");