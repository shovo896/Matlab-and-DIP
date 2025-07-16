% This is a function to square a number
square_function= @(x) x^2 ; 
% Array of numbers to be squared 
input_array = [1, 2,3,4,5]; 
%use array fun to apply the square function to each element 
output_array=arrayfun(square_function,input_array); 
%Display the result 
disp(output_array)