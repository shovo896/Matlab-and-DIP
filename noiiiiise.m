clear ;
I = rgb2gray(imread("WIN_20250412_20_04_41_Pro.jpg"));
subplot(2,2,1);
imshow(I);
title("Orginal Image");

% adding salt and pepper noise  
s = imnoise(I,"salt & pepper",0.20);
subplot(2,2,2),
imshow(s);
title("salt and pepper noise");

% addiong gaussian noise 
g = imnoise(I ,"gaussian",0.20);
subplot(2,2,3);
imshow(g);
title("Gaussian noise");
% adding Speckle noise '
sp = imnoise(I , "speckle",0.20);
subplot(2,2,4);
imshow(sp);
title("Specle Noise");