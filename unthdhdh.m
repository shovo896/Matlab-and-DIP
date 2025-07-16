a=imread("1-300x243.png");
Lap=[0 1 0 ;1 -4 1 ; 0 1 0];
a1=conv2(a,Lap,'same');
a2=unit8(a1);
imtool(abs(a-a2),[])
lap=[-1 -1 -1; -1 8 -1; -1 -1 -1];
a3=conv2(a,lap,'same');
a4=unit4(a3);
imtool(abs(a+a4),[])