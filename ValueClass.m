classdef ValueClass 
    properties 
        property1 
    end 
end 
obj1=ValueClass;
obj1.property1=10;
obj2=obj1;
obj2.property1=20 ;
disp(obj1.property1);
disp(obj2.property1);
