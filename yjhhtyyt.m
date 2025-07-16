[X,Y,Z]=meshgrid(1:5,1:5,1:5);
V=sin(X).*cos(Y).*Z;
K=2; %Halve the intervals twice in each dimension 
Vq=interp3(V,K);
%plottingv
figure;
subplot(1,2,1);
slice(V,3,3,3);
title('Orginal Grid');
xlabel('X');ylabel('Y');zlabel('Z');

subplot(1,2,2);
slice(Vq,3,3,3);%Interplotted grid
title('Interplotted Grid(k=2)');
xlabel('X');ylabel('Y');zlabel('Z');
