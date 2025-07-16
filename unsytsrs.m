orginal=imread('1-300x243.png');
imshow(orginal);title('orginal Image');
secretmessage=imread('logatable.txt');
msg=imbinarize(rgb2gray(secretmessage));
msg=imresize(msg,size(orginal(:,:,1)));
temp=orginal;
temp(:,:,1)=bitset(temp(:,:,1),1,msg);
figure,imshow(temp);title('Encrypted Image');
imwrite(temp,'encryptedImage.bmp');