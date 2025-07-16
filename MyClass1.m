classdef(sealed) MyClass1<SuperClass 
    properties(Access=private)
        property1 
    end 
    
    methods 
        function obj = MyClass1(inputArg)
            obj.Property1=inputArg;
        end 

        function output = myMethod(obj,inputArg)

           output=obj.property1+inputArg;
        end 
    end 
    events 
        Event1 
    end 
    enumeration 
           EnumMember1,EnumMember2 
    end 
end 
