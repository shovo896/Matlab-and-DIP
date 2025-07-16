k = imread("Screenshot2546.png"); 
RemoveSaltAndPepperNoise(k);
function  RemoveSaltAndPepperNoise(k)
[M,N,D]=size(k);
if (D == 3)
    k = rgb2gray(k);
end
kn = imnoise(k,'salt & pepper',0.03);
imtool(k,[]);
imtool(kn,[]);
dn = medflit2(kn,[5,5]);
imtool(dn,[]);
pause(10);
imtool close all ;
end 
