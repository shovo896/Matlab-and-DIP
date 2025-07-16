clear  all
%GLCM MATRIX 
X=[6 7 8 9 7 ;2 3 4 5 6 ;7 7 5 4 9 ;3 4 3 4 2 ; 2 3 2 3 2];
Displacement=1;
NumQuantLevels=9;
glcm=zeros([NumQuantLevels,NumQuantLevels
 for i=1:size(X,1)
    for j=1:size(X,2)-1
        glcm(X(i,j)),X(i,j+1)=glcm(X(i,j),X(i.j+1))+1;
    end 
end 

