[x,Y,Z]=meshgrid(-2:2,-2:2,-2:2);
V=X.^2+Y.^2+Z.^2;
%Define the qyuery points 
[Xq,Yq,Zq]=meshgrid(-2:0.5:2,-2:0.5:2,-2:0.5:2);
%perfrom 3D array interploation using cubic method 
figure;
scatter3(X(:),Y(:),Z(:),100,V(:),'filled');
hold on ;
scatter3(X(:),Y(:),Z(:),100,V(:),'filled');
hold on ;
scatter3(Xq(:),Yq(:),Zq(:),100,Vq(:),'filled');
legend('Orginal Points','Interploted Points');
title('3d array Interception using Cubic Method');
xlabel('X');
ylabel('Y');
zlabel('Z');