n=5;
x=1:20;
r=2;
cutoff=0.5 ;
y=interp(x,r,n,cutoff);
subplot(2,1,1);
stem(x,'b','DisplayName','Orginal Signal');
xlabel('Sample');
ylabel('Value');
title('Orginal and Interpolated Signals');
legend('show');


subplot(2,1,2);
stem(y,'r','Display Name','Interpolaated Signal');
xlabel('Sample');
ylabel('Value');
legend('show');