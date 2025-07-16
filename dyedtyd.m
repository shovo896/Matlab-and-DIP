img=imread('untitled1.jpg');
R= img(:,:,1);
G= img(:,:,2);
B= img(:,:,3);
GS = rgb2gray(img);
R1 = GS;
G1= GS ;
B1 = GS ;
% Importing the mask 
mask = imread('untitled1.jpg');
mask_gray= rgb2gray(mask);
mask_bw = imbinarize(mask_grey);

% Find index 
X = find(mask_bw == 0 ) ;
R1(X) = R(X);
G1(X) = G(X);
B1(X) = B(X);
% create a RGB matrix 
C = zeros(size(img));
C(:,:,1) = R1 ;
C(:,:,2) = G1 ;
C(:,:,3) = B1 ;
C= unit8(C);
figure ,imshow(C)