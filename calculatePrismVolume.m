% Main function 
function volume = calculatePrismVolume(length,width,height)
          baseArea= areaOfRectangle(length,width); 
          volume=volumeOfPrism(baseArea,height); 
end 
% sub-function 1 
function A = areaOfRectangle(l,w)
        A = l*w ; 
end 
%sub-function 2 
function V = volumeOfPrism(baseArea,h)
      V = baseArea*h ; 
end 