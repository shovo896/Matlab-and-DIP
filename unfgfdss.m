input_cell_array={'apple','banana','chery'};
length_function=@(str) length(str);
output_array=cellfun((len_function,input_cell_array); 
% Display same result 
disp(output_array)