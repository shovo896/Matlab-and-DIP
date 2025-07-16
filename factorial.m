function result = factorial(n) 
     % Base case 
     if n == 0 
         result= 1; 
     else 
        % recursive case 
        result= n*factorial (n-1); 
     end 


end 