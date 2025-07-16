[x,y]=meshgrid(-5:0.1:5,-3:0.1:3);
g=x.^2+y.^2;
contour(x,y,g)
print     -deps graph.eps 