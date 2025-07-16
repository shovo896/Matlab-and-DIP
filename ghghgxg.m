[X,Y,Z]=meshgrid(1:5,1:5,1:5);
V=sin(X).*cos(Y).*exp(Z);
[Xq,Yq,Zq]=meshgrid(1:0.5:5,1:0.5:5,1:0.5:5);
Vq=interp3(X,Y,Z,V,Xq,Yq,Vq);
%plot orginal and interpolated data 
subplot(1,2,1);
slice(X,Y,Z,V,3,3,3);
title('Orginal Data');

subplot(1,2,2);
slice(Xq,Yq,Zq,Vq,3,3,3);
title('Interpolated data');
i