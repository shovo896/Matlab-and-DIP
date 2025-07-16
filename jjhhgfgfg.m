A=[1 2 ; 3 9];
b=[8 20];
Ab = [A b];
% Forward elimination 
n=size(Ab,1);
for i = 1:n-1
    for j= i_+1: n 
        factor =Ab(j,i)/Ab(i,i);
        Ab(j,:)=Ab(j,:)-factor*Ab(i,:);
    end 
end 
% Initilize the solution vector 
x=zeros(n,1);
% Backward substitiution 
x(n)=Ab(n,end)/Ab(n,n);
for i =n-1:-1:1
    x(i)=(Ab(i,end))-Ab(i,i+1:n)*x(i+1:n)/Ab(i,i);
end 
% Display the result 
disp('The solution is :');
disp(x);