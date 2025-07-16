[X,Y]=meshgrid(-2:0.1:2,-2:0.1:2);
Z=sin(X)+cos(Y);
contour3(X,Y,Z,'LineWidth',2,'LineColor','red','LineStyle','--');