x=[1,2,3,4,5,6,7,8,9,10];
r=2;
y=interp(x,r);
subplot(2,1,1);
stem(x,'b','DisplayName','Orginal Signal');
xlabel('Sample');
ylabel('Value');
title('Orginal and Interpolated signals');
legend('show');
subplot(2,1,2);
stem(y,'r','DisplayName','Interpolated Signals');

xlabel('Sample');
ylabel('Value');
legend('show');