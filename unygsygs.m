% Matlab code 
% Reading input image : input image 
input_image=imread('WIN_20250412_20_04_41_Pro.jpg');
[M,N] =size(input_image);
FT_img=fft2(double(input_image));
n = 2 ;% one can change the value accordingly 
D0 = 1 % Assign cut off frequency 
% Designing filter 
u= 0 :(M-1);
v=0: (N-1);
idx = find(u> M/2);
u(idx)=u(idx)-M;
idy=find(v>N/2);
v(idy)=v(idy)- N ;
[U,V]=meshgrid(u,v);
D = sqrt(U.^2 +V.^2);
H = 1./(1+(D./D0).^(2*n));
G = H.*FT_img;
output_image=real(ifft(double(G)));
subplot(2,1,1),imshow(input_image),
subplot(2,1,2),imshow(output_image,[]);
