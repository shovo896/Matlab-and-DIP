fp=fopen('logatable.txt');
fseek(fp,0,'eof');
fsz=ftell(fp);
i=1;
fseek(fp,-1,'cof');
chr=fread(fp,1,'*char');
Z(1,i)=chr;
Word=0;
while(fseek(fp,-2,'cof')~=-1)
    c=fread(fp,1,'*char');
    if(isspace(chr))
        if(Word==0)
            Word=[fliplr(Z) blanks(Z)];
        else 
            Word=[Words fliplr(Z)];
        end 
        i=1;
        z='';
    else 
        i=i+1;
        Z(1,i)=chr;
    end 
end 
Word=[Word fliplr(Z)];l
display(Word);
fclose(fp);