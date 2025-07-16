% Generate sample data 
x= linspace(0,10,100);%Create an array of 100 points from 0 to 10 
y1=sin(x); %compute sine values for each point in x 
y2 = cos(x);
plot(x.,y1,y2,'r--',x,y2,'b-.');
title(sine and cosine);
xlabel('x');
ylabel('y');
legend('sin(x)','cos(x)') ; 