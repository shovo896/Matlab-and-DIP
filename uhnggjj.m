clc ;
c-imread("Screenshot (209).png");
cd=double(c);
c1= mod(cd,2);
c2=mod(floor(cd/2),2);
cd3=mod(floor(cd/4),2);
cd4=mod(floor(cd/8),2);
cd5=mod(floor(cd/16),2);
cd6=mod(floor(cd/32),2);
cd7=mod(floor(cd/64),2);
cd8=mod(floor(cd,128),2);
%combining image again to form equavalent to Orginal image
cc=(2*(2*(2*(2*(2*(2*(2*c8+c7)+c6)+c5)+c4)+c3)+c2)+c1);
%plotting orginsl image in first subplot
subplot(2,5,2);
imshow(c1);
title('Bit plane1');
subplot(2,5,2);
imshow(c2);
title('Bit plane2');
subplot(2,5,4);
imshow(c3);
title('Bit plane3');
subplot(2,5,5);
imshow(c4);
title('Bit plane 4');
subplot(2,4,6);
imshow(c5);
title('Bit plane 5');
subplot(2,5,7);
imshow(c6);
title('Bit plane 6');
subplot(2,5,9);
imshow(c7);
title('Bit plane 7');
subplot(2,5,10);
imshow(c8);
title('Bit plane 8');
%plotting recombined image with 10th object 
subplot(2,5,10);
imshow(unit8(cc));
title('Recombined image');

