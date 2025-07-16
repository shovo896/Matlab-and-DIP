t= 0:0.0001:2;
z=sin(2 *pi*50*t)+sin(2*pi*150*t);
spectrogram(z);
title('spectrogram of sum of two waves');