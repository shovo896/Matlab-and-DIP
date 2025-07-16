clc 
clear all 
x = [1 2 3 4]
y = upsample(x,3)
stem(x)
subplot(4,1,2)
stem(y)
c = downsample(y,3)
subplot(4,1,3) 
stem(c)