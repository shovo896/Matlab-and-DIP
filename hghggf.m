% create a simple signal 
x=[1,2,3,4];
% calculate the Discrete Fourier Transformation of the signal 
y=fft(x);
% Display the orginal signal and its DFT 
disp('Orginal Signal');
disp(x);
disp('Discrete Fourier Transformation');
disp(y);