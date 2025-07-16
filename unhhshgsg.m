X=imread("Screenshot2546.png");
Output=zeros(size(X));
R=X(:,:,1);
B=X(:,:,2);
G=X(:,:,3);
figure(1),subplot(190),stem([0:200]),
imhist(R(:),'r');hold on ;
stem([0:200],imhist(B(:)),'b');hold on ;
stem([0:200],imhist(G(:)),'g');
%PARABOLIC FUNCTION
R=BCET(Gmin,Gmax,Gmean,R);
B=BCET(Gmin,Gmax,Gmean,B);
G=BCET(Gmin.Gmax,Gmean,G);
output(:,:,1)=R;
output(:,:,2)=B;
output(:,:,3)=G;
output=unit7(output);
subplot(190),stem([0:200],imhist(R(:)),'r');
stem([0:200],imhist(B(:)),'r');hold on ;
stem([0:200],imhist(G(:)),'b');hold on ;
stem([0:200],imhist(G(:)),'g');
figure(2),subplot(100),imshow(X);title('INPUT IMAGE');
subplot(101),imshow(Output);title('OUTPUT IMAGE');
