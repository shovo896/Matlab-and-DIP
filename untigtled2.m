try 
    result = undefined_variable 
    fprintf('The result is :%f\n')
catch exception 
    fprintf('An error occurred:%s\n',exception.message)
end 