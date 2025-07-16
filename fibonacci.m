function result = fibonacci(n)
  % Base case 
  if n== 0 
      result = 0 ; 

  elseif n == 1 ; 
      result = 1 ; 
  else 
      % recursive case 
      result = fibonacci(n-1)+fibonacci(n-2); 
  end


end 