% define parameters 
t = 0:0.1:10*pi ;
% Line 1 
r1=1;
h1=1;
x1=r1*cos(t);
y1=r1*sin(t);
z1=h1*t;
%Line 2 
r2= 0.5 ;
h2=2 ;
x2=r2*cos(t) ;
y2=r2*sin(t);
z2=h2*t;
%plotting muliple lines 
plot3(x1,y1,z1,x2,y2,z2);
