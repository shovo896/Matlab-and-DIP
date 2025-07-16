% parametrs 
r=1 ;
h=1 ;
t=0:0.1:10*pi;
%parameters x,y,z 
x=r*cos(t);
y=r*sin(t);
z=h*t;
% plotting equations for x,y,z 
x= r*cos(t) ;
y=r*sin(t);
z=h*t;
% plotting the helix
plot3(x,y,z,'-o','color','b','MarkerSize',10,'MarkerFreeColor','#CFCHCF')