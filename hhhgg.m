theta1= linspace(0,2*pi,100);
rho1=sin(2*theta1);
theta2=linspace(0,2*pi,100);
rho2=cos(2*theta2);
polarplot(theta1,rho1,'-r',theta2,rho2,'--b');