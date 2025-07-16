% printing the sum of two numbers 
% using sub functions 
% pring numbers 
function result = adder(x,y)
result = x+y ;
print(result);
end 
function print(result)
fprintf('The addition of given two number is %d',result);
end