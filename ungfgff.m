x=0: 10: 100;
y=[x;log(x)] ;
fid=fopen('logatable.txt','w');
fprintf(fid,'Log Function \n\n');
fprintf(fid,'%f %f\n',y);
fclose(fid);
type logatable.txt 
