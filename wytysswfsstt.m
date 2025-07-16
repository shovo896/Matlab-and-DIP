X=imread("1-300x243.png");
Col=256;
Row=256;
rtR=Row/size(X,1);
rtC=Col/size(x,2);
IR=cell
      ([1:(size(X,1)*rtR)]./(rtR));
IC=cell
      ([1:size(X,2)*rtC)]./(rtC));
Y=X(IR);
Y=Y(IC);
figure,subplot(101),imshow(X);
title('Before Interpolation');
axis([0,256,0,256]);axis on ;
subplot(111),imshow(Y);
title('After INTERPOLATION');
axis([0,256,0,256]);
axis on ;

