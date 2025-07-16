I =imread('untitled1.jpg');
size(I)
figure,imshow(I);
I1 = imresize(I,0.5);
size(I1);
figure,imshow(I1);
I2=imresize(I,[100,200]);
size(I2)
figure,imshow(I2);
