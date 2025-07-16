fs=1000;
t=0:1/fs:1;
f1=50;
x=sin(2*pi*f1*t);
% calculate the spectrogram 
s=spectrogram(x);
imagesc(t,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     f, 10*log10(abs(s)))
