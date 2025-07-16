function fact = factorial_custom(n)
   if n< 0 
       error ('Factorial is undifined for neg numbers ');
   elseif n==0 || n== 1 
       fact = 1 ; 
   else 
       fact = 1 ; 
       for i = 2 : n 
           fact = fact * n ; 
       end 
   end 
end 