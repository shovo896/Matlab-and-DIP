x=r cost,y=r sint
t=linspace(0,2*pi,200);
r=sqrt(abs(2*sin(5*t)));
x=r.*cos(t);
y=r.*sin(t);
fill(x,y,'k');
axis('square')