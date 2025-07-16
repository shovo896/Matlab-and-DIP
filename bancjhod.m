classdef bancjhod
    properties 
        X 
        Y 
    end 
    methods 
        function obj =point(x,y)
            if nargin > 0 
                obj.X=x;
                obj.Y= y;
            end 
        end 
        function obj=set.X(obj,x)
            if x>=0 
                obj.X=x; 
            else 
                error ('X must be non-negative');
            end 
        end 
        function obj=set.Y(obj,y) 
            if y>=0 
                obj.Y= y ;
            else 
                error ('Y must be non-negative ');
            end 
        end 

        function distance =distanceToOrgin(obj)
               distance=sqrt(obj.X^2+obj.Y^2);
        end 
    end 
end