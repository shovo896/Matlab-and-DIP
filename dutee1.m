% Define a named function 
function result = myFunction(x)
     result = x^2 ;
end 
% create a function handle to myFunction 
funcHandle=@myFunction ; 