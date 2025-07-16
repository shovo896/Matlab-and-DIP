f=@(x) x.^2;
a=0;
b=2;
n=10;
h=(b-a)/n;
integral=f(a)+f(b);
for i=1:n-1
    x=a+i*h;
    if mod(i,2)==0 
        integral=integral +2*f(x);
    else 
        intrgral=integral +4*f(x);
    end 
end 
integral=(h/3)*integral ;
disp(['approximate integral:',num2str(integral)]);