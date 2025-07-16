x=linspace (0,pi);
y1=cos(x);
p1=plot(x,y1);
hold on 
y2=cos(2*x);
plot(x,y2);
y3=cos(3*x);
p3=plot(x,y3);
%release the hold on to prevent further plots from being added to current
%figure 
hold off 
% Display the legend with labels for the first and third plots 
legend([p1,p3],{'First','Third'})