syms x 
f=@(x,y) x.*y ;
result=integral2(f,0,1,0,1);
disp('definite Integration');
disp(result);