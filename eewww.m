[X,Y]=meshgrid(-3:0.2:3,-3:0.2:3);
Z=peaks(X,Y);
[Xq,Yq]=meshgrid(-3:0.05:3,-3:0.2:3);
%perfrom 2D linear interpolation 
Zq=interp2(X,Y,Z,Xq,Yq,'linear');
% plot the orginal and interploted surfaces 
subplot(1,2,1);
surf(X,Y,Z);
title('Orginal Surface');
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');

subplot(1,2,2);
surf(Xq,Yq,Zq);
title('Interploted Surface');
xlabel('X-axis');
ylabel('Y-label');
zlabel('Z-axis');