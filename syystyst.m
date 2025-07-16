fp=fopen('logatable.txt');
fseek=(fp,0,'eof');
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
            Wrd=[fliplr(Z) blanks(1)];
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
word=[word fliplr(Z)];
display(word);
fclose(fp);