x=[1,2,3,4,5];
v=[10,20,30,40,50];
xq=1.5:0.5:4.5;
%perform linear interpolatrion 
vq=interp1(x,v,xq);
%plot the orginal data 
figure;
plot(x,v,'-bo','LineWidth',1.5,'MarkerSize',8);
hold on ;
%plot the interpolated values 
plot(xq,vq,'rx','LineWidth',1.5,'MarkerSize',8);
%Add labels and legend 
xlabel('x');
ylabel('Value');
title('Linear Interpolation Example');
legend('Orginal Data','Interpolated Values','Location','best');
grid on ;
hold off ;