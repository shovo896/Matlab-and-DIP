classdef manush1 
    properties 
        X 
        Y 
    end 
if nargin > 0 
    obj.X=x;
    obj.Y =y;
end
     end     
        % overload the plus operator 
        function result = plus(obj1,obj2) 

       result=point(obj1.X+obj2.X,obj1.Y+obj2.Y);
     end 
    % overload the mtimes operator 
    function result = mtimes(obj,scalar)
         result=manush1(obj.X*scalar,obj.Y*scalar);
      end 
   end 
end 