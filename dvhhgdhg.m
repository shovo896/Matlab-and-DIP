% create an array of values from 0 to pi 
x=linspace(0,pi);
% calculate y1=cos(x) and plot it with a label 'cos(x)'
y1=cos(x);
plot(x,y1,'DsplayName','cos(x)') 
% Hold the current plot to add another point 
hold on 
% calculate y2=cos(2x) and plot it with a label 'cos(2x)'
y2=cos(2*x);
plot(x,y2,'DisplayName','cos(2x)') 
% release the hold to prevent further plots from being added to current
% figure 
hold off 
% display the legend labels for each plot 
legend 