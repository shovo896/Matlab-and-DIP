x=randn(100,1);
y=randn(100,,1);
g=randi([1,3],100,1);
clr=['r','g','b'];
sym=['o','s','d'];
siz=[20,30,40];
gscatter(x,y,g,clr,sym,siz);