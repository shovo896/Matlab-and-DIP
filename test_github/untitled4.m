x = [1 2 3 4];          % Input signal
h = [1 -1 2];           % Impulse response

y = conv(x, h);         % Perform convolution
disp(y);

subplot(3,1,1);
%% 
stem(x); title('Input Signal x[n]');

subplot(3,1,2);
stem(h); title('Impulse Response h[n]');

subplot(3,1,3);
stem(y); title('Output Signal y[n] = x[n] * h[n]');
