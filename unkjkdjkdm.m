% MATLAB program for conversion HSI to RGB image .
figure ,% show the HSI image in figure1 .
imshow(HSI);title('HSI Image');
H1=HSI(:,:,1);
S1 =  HSI(:,:,2);
I1= HSI(:,:,3);
H1 = H1*360;
%   allocation with rgb element 
R1 = zeros(size(H1));
G1 = zeros(size(H1));
B1 = zeros(size(H1));
RGB1 =zeros([size(H1),3]);
%RG sector 
B1(H1 < 120) = I1(H1 < 120).*(1-S1(H1<120)) ;
R1(H1 < 120)=I1(H1 < 120).*(1+((S1(H1<120).*cosd(H1(H1<120))) ...
    ./cosd(60-H1(H1<120))));
G1(H1 < 120) = 3.*I1(H1<120)- (R1(H1<120)+ B1(H1< 120)) ; 
H2 = H1 -120 ;
G1(H1 >= 240 & H1 <= 360) =I1(H1 >= 240 & H1 < 360).*(1-S1(H1>=240 & H1 <= 360));
B1 (H1 >= 240 & H1 <= 360) = I1(H1>= 240& H1 <= 360).*(1+((S1(H1>=240 & H1 <= 360).*cosd(H2(H1> 240 & H1 < 360)))./cosd(60-H2(H1>=240&H1< 360))));
R1(H1 >= 240 & H1 <= 360)= 3.*I1(H1>= 240 & H1<=360)-(G1(H1>=240 & H1 < 360)+B1(H1>= 240 & H1 <= 360));
RGB1(:,:,1) = R1;
RGB1(:,:,2) = G1 ;
RGB1(:,:,3) = B1 ;
RGB1 = im2uint8(RGB1);
figure,% show the image in figure 2 
imshow(RGB1);title('RGB Image');


