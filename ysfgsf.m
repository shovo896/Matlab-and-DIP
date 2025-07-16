theta=linspace(0,2*pi,100);
rho1=sin(2*theta);
rho2=cos(2*theta);
rho3=sin(theta);
polarplot(theta,rho1,'-b'); %plot in blue
hold on ;
polarplot(theta,rho2,'--r');
polarplot(theta,rho3,'-.g');
legend('sin(2\theta','cos(2\theta)','Location','best');
title('Multiple polar line plots');