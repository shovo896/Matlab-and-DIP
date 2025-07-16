x=1:5 ;
y=[3,4,5,2,7,4];
error=[0.5,0.8,0.3,0.6,0.4];
e=errorbar(x,y,error,'o-','LineWidth',2,'MarkerSize',8,'MarkerFaceColor','b');
set(e,'Color','r','CapSize',12);