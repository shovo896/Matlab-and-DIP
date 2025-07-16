% parameters
r=1 ;
h=1;
t=0:0.1:10*pi;
% parameters equations fo x,y,z 
x=r*cos(t);
y=r*sin(t);
z=h*t;
% plotting the helix 
plot3(x,,y,z,'o');