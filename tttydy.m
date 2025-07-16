[X,Y]=meshgrid(-2:0.1:2,-2:0.1:2);
Z=sin(sqrt(X.^2+Y.^2));
surfc(X,Y,Z);