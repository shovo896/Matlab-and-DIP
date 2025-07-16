C=[9,8,7,6;1,2,3,4];
display(C);
b=C;
for i=1:size(C,1)
    for j=2:size(C,2)
        b(i,j)=b(i,j)-C(i,j);
    end 
end
display(b);
%Huffman coding 
A=reshape(b,[],1);
[D1,x]=hist(A,min(min(b)):max(max(b)));
sym=x(D1>0);
prob=D1(D1>0)/numel(b);
[dict,avglen]=huffmandict(sym,prob);
comp=huffmanenco(A,dict);
%   Huffman dsecoding 
disg=huffmandeco(comp,dict);
b=reshape(dsig,size(C,1),size(C,2));
d=b;
for i=1:size(C,1)
    for j=2:size(C,2)
        d(i,j)=d(i,j-1)+b(i,j);
    end 
end 
display(d);

