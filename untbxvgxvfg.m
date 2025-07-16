freq = [0 0.45 0.5 1 ];
mag = [0 1 0 0 ];
x = fir2(99,freq,mag);
[Xz,w] = freqz(x,1,512);
figure,plot(w/pi,abs(Xz));grid
xlabel('\omega/\pi');
ylabel('Magnitude');
title('Input spectrum');
pause 

L = input('Enter the integer factor of upsampling = ');
y=zeros(1,L*length(x));
y([1:L:length(y)])= x ;
[Yz,w]=freqz(y,1,512);
figure,plot(w/pi,abs(Yz)); grid 
title('output spectrum');
xlabel('\omega\/pi');
ylabel('Magnitude');