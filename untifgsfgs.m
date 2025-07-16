v=[3,4,5,3,1,5,0,1.5,3];
xq=1.5:0.5:8.5;
vq=interp1(1:numel(v),v,xq);
figure 
plot((1:9),v,'o',xq,vq,'*');
legend('v','vq');