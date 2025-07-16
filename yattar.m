[X,Y]=meshgrid(-2:0.1:2,-2:0.1:2);
Z=sin(X)+cos(Y);
contour3(X,Y,Z,[0,0.5,1]);