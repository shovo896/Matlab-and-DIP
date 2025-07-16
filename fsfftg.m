x1=logspace(1,3,100);
y1=2*x1.^2;
x2=logspace(1,3,100);
y2=500./x2;
loglog(x1,y1,'b--',x2,y2,'r--');