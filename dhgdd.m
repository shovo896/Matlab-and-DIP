img = imread('untitled1.jpg');
HSV= rgb2hsv(img);
H = HSV(:,:,1);
H(H > mean2(H)) = .7 ;
HSV(:,:,1) = H ;
C = hsv2rgb(HSV);
figure,imshow(C);title('Caolor sliced to Blue ') ;