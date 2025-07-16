function [x1,x2] = quadratic3(a,b,c)
% this functions returns the roots of 
%  a quqdratic solution .
% It takes 3 input arguments 
% which are the co-efficient of x2 ,x and the % constant form 
% It returns the roots 
   d = disc(a,b,c) ; 
   x1= (-b+d)/(2*a) ;
   x2 = (-b-d)/2*a ; 
end  % end of quadratic3 