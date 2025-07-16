function output=describe(input)
     if isnumeric(input)
         %If the input is numeric ,return a  description ofg the number 
         if input > 0 
             output='positive number';
         elseif input <0 
             output ='Negative number';
         else 
             output ='zero';
         end 
     elseif  ischar(input)
         %If the input is a string ,return the description of the string 
         output=['This is a string',input];
     else 
         error ('Unsupported input type');
     end 
end 