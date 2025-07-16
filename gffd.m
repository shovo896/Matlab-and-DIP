syms t omega 
f=sin(omega*t);%Define the function 
F=fourier(f,t,omega);
disp(F);