classdef Animal
    properties 
        Name 
    end
    methods 
        function obj=Animal(name)
            if nargin > 0 
                obj.Name = name ;
            end 
        end 
        function speak (obj)
            fprintf('%s makes sound .\n',obj.Name );
        end 
    end 
end 
