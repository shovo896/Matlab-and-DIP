[x,y]=meshgrid(-2:0.5:2,-2:0.5:2);
%Define the function z=f(x,y)=x^2+y^2
z=x.^2+y.^2;
% create a finer grid for interpolation 
[xq,yq]=meshgrid(-2:0.1:2,-2:0.1:2);
%perform 2D interpolation 
zq=interp2(x,y,z,xq,yq,'cubic');

% plot the orginal and interpolated data 
figure;
surf(xx,y,z);
hold on ;
surf(xq,yq,zq);
legend('Orginal Data','Interpolated Data');
xlabel('X');
ylabel('Y');
zlabel('Z');
title('2d  interpolation of gridded Data');
