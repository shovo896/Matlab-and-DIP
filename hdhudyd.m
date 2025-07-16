    I = imread('untitled1.jpg');
    figure 
    imshow(I);
    J = medfilt3(I,[3,3,3]);
    figure 
    imshow(J);