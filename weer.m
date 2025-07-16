% define the range of x 
x= -10:0.25:10;
%calculate y as the fourth power of x
y=x.^4;
% plot the function
plot(x,y);
hold on; 
%Heighlight the region beetween x=-2 and x=3
x_region=-2:0.25:3; 
y_region=x_region.^4;
patch([x_region fliplr(x_region)],[y_region zeros(size(y_region))],'red','FaceAlpana',0.3);
% Add lavels and title 
xlabel('X-axis');
ylabel('Y-axis');
title('plot of y = x^4 with highlighted region ');
grid on;
hold off;