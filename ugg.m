x=-2*pi*0.1:2*pi;
y=-2*pi:0.1:2*pi;
[X,Y]=meshgrid(x,y);
Z=sin(sqrt(X.^2+Y.^2));
mesh(X,Y,Z);