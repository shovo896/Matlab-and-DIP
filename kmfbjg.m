[x,y,z]=meshgrid(-2:0.5:2,-2:0.5:2,-2:0.5:2);

w=x.^2+y.^2+z.^2;
[xq,yq,zq]=meshgrid(-2:0.1:2,-2:0.1:2,-2:0.1:2);
%perfrom 3D interpolation 
wq=interp3(x,y,z,xq,yq,zq,'cubic');
% plot the orginal and interpolated data 
figure;
slice(x,y,z,w,[0],[0],[0]);% plot slices of the orginal data 
hold on ;
slice(xq,yq,zq,wq,[0],[0],[0]); %plot slices of the interpolated data
xlabel(X);
ylabel('Y');
zlabel('Z');
title('#D interpolation of gridded data ');
legend('Orginal Data','Interpolated Data');