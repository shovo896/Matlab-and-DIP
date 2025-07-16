% define a custom function that takes a function handle as an argument 
function result = applyoperation(func,a,b)
     result = func(a,b) ; 
end 
% use applyOperation to apply different operations 
add = @ (a,b) a+b ; 
substract=@(a,b) a-b ; 
result1=applyOperation(add,5,3) ; 
result2= applyOperation(substract,5,3) ; 