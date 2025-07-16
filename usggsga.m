GFG=fopen('1-300x243.png','r');
full_data=fread(GFG,[746*2 3680],'double');
fclose(GFG);
R_data=full_data(1:2:end,:);
I_data=full_data(2:2:end,:);
complex_data=complex(R_data,I_data);
figure,imagesc(abs(complex_data));
colormap(rgbplot);