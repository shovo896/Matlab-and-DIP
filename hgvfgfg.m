x=(-3,3);
v1=x.^3;
v2=2*x.^3+2;
v3=3*x.+4;
v=[v1,v2,v3];
xq=-3:0.1:3;
vq=interp1(x,v,xq,vq,'--','LineWidth',1.5,'MarkerSize',8);
xlabel('x');
ylabel('value');
title('Linear Interpolation of multiple sets of data');
legend('Set1-Orginal values','Set 2- Orginal Values','Set3-Orginal values','Interpolated Values','Location'
'best');
grid on ; 