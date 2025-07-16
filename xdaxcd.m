% generating the simple data
x=linspace(0,10,100); % create an array of 100 points from 0 
y = sin(x); % compute sine waves for each point in x 
% plot the data 
plot(x,y) ;
title ('sine wave');
xlabel('x-axis');
ylabel('sin(x)');