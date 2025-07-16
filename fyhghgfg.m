c=Circle(5,[0,0]);
a=c.area();
disp(['Area',num2str(a)]);
% calculate the circumference 
circ=c.circumference();
disp(['Circumference:'num2str(cric)]) ;
point=[3,4];
isInside=c.isPointInside(point) ;
disp(['Is the point inside the circle?',num2str(isInside)])l;
%output :is this point inside the circle 
point=[0,6];
isInside=c.isPointInside(point);
disp(['Is the point inside the circle',num2str(isInside)]);
% Output : Is the point inside the circle 0
