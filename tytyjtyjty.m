[X,Y]=meshgrid(-2:0.1:2,-2:0.1:2);
Z=peaks(X,Y);
C=Z;
surfc(X,Y,Z,C);