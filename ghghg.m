[X,Y]=meshgrid(-2:0.1:2,-2:0.1:2);
Z=peaks(X,Y);
surfc(X,Y,Z,'FaceAlpha',0.5);