% matlab code for evaluation 
% matrix initializatgion 
k = [1 4 3 2 ;
    6 7 10 2 ;
    8 4 10 6];
mask1 = ones(3,3).*1/9 ;
R1 = conv2(k,mask1,'same');
% random mask 
mask2 = [1 1 1;
    0 0 0;
    -1 -1 -1];
R2=conv2(k,mask2,'same');
% show matrix -k ,mask and result -1 
k 
mask 
R1 
%show matrix -k ,mask2 and result-2 
k 
mask2 
R2