x=[1,2,3,4,5];
v=[10,20,30,40,50];
xq=1.5:0.5:4.5;
% perfrom interpolation with different methods 
method='cubic';
vq=interp1(x,v,xq,method);
%plot the interpolated values 
plot(x,v,'bo-','LineWidth',1.5,'MarkerSize',8);
hold on ;
plot(x,v,'bo-','LineWidth',1,5,'MarkerSize',8);
xlabel('x');
ylabel('Value');
title(['Interpolation Method :',method]);
legend('Orginal Data','Interpolated Values','Location','best');
grid on; 
hold off ;
