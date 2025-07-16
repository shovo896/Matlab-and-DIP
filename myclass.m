classdef myclass 
    properties 
        property1
    end 
    methods 
        function obj =myclass(val)
            if nargin> 0 
                obj.property1=val ;
            end 
        end 
        function output =myMethod(obj,input)
            output=obj.property1+input ;
        end 
    end 

end 