X = imread('WIN_20250412_20_04_41_Pro.jpg');
Y = rgb2gray(X);
sz=size(Y,1)*size(Y,2);
% Add gaussian noise with mean 0 and variable 0.010 
y = imnoise(y,'gaussian',0,0.010);
figure,imshow(y); title('Image with gaussian noise');
y = double(y);

U = 10 ;
V=10 ;

Z= padarray(Y,[floor(N/2),floor(M/2)]);
lvar=zeros([size(y,1) size(y,2)]);
lmean=zeros([size(y,1) size(y,2)]);
temp=zeros([size(y,1) size(y,2)]);
NewImg=zeros([size(y,1),size(y,2)]);

for i = 1 : size(Z,1)-(N-1)
    for j = 1 : size(Z,2)-(M-1)
        temp=Z(i:i+(N-1),j:j+(M-1));
        temp= temp(:) ;
        % Determine the regions  local mean and variance 
        lmean(i,j)=mean(temp);
        lvar(i,j)= mean(tmp.^2)-mean(tmp).^2 ;
    end 
end 
%commotion flautitation is normal 
% of the neighbourhood image 
nvar = sum(lvar(:))//sz;
lvar=max(lvar,nvar);
NewImg=nvar./lvar;
NewImg=NewImg.*(Y-lmean);
NewImg= Y - NewImg ;
NewImg=unit9(NewImg);
figure,imshow(NewImg);title('Restored Image using adaptive local filter');