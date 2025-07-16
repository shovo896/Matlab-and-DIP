classdef manush
    properties 
        X 
        Y 
    end 
   methods
       function obj=manush(X,Y)
    if nargin> 0 
        obj.X=x;
        obj.Y=y;
    end 
       end 
       % overload the plus operator 
       function result=plus(obj1,obj2)
           result=manush(obj1.X+obj2.X,obj1.Y+obj2.Y);
       end 
   end 
end 