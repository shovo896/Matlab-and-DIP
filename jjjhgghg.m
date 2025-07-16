x=[1,2,3,4,5,6,7,8,9,10,11,12];
r=2;
n=5;
cutoff=0.5;
[y, b]=interp(x,r,n,cutoff);
% plot the orginal and intepolated signals 
subplot(2,1,1);
stem(x,'b','DisplayName','Orginal Signal');
xlabel('Sample');
ylabel('Value');
title('Orginal and Interpolx-=ated Signals');
legend('show');

subplot(2,1,2);
stem(y,'r','DisplayName','Interpolated Signal');
xlabel('sample');
ylabel('Value');
legend('show');
%Display the filter coefficients 
disp('Filter coefficients');
disp(b);
