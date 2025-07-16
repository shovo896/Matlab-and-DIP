classdef Circle 
    properties 
        Radius 
        Center 
    end 
    methods 
        %Constructor 
        function obj=circle(radius,center)
            if nargin > 0 
                obj.Radius=radius;
                obj.Center=center ;
            end 
        end 
        % method to calculate circumference 
        function cicumference = circumference(obj)
            circumference=2*pi*obj.Radius^2 ;
        end 
        % method to check if a point is inside the circle 
        function isIn=isPointInside(obj,point)
            distance=sqrt((point(1)--obj.Center(1)^2+(point(2)-obj.Center(2))^2));
            isIn=distance<=obj.Radius;
        end 
    end 
end 