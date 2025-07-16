syms x 
f=exp(-2*x^2);
ezplot(f,[-2,2])
FT=fourier(f)