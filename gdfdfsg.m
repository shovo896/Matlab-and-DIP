v=[1+2i,3+4i,5+6i,7+8i,9+10i];
xq=1.5:0.5:5.5;
%perfrom linear interpolation 
vq=interp1(1:numel(v),v,xq,'linear');
% plot the orginal and interpolated complex values 
figure;
plot(1:numel(v),real(v),'-bo',1:numel(v),imag(v),'go',...
    xq,real(vq),'rx--',xq,img(vq),imag(vq),'yx--','LineWidth',1.5,'MarkerSize',8);
xlabel('sample Point text');
ylabel('Value');
title('Linear Interpolation of complex values ');
legend('Real(v)','Img(v)','Real(vq)','Imag(vq)','Location','best');
grid on ;