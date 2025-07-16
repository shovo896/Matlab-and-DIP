function hypotenuse=calculateHypotenuse(a,b)
        % Local function to square and sum two numbers 
function sumResult = squareAndSum(x,y)
      sumResult=x^2+y^2 ; 
end 
% Calculate the squared sum 
squaredSum= squareAndSum(a,b);
% Calculate the hypotenuse 
hypotenuse=sqrt(squaredSum);
end 