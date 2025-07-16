function sharpened_image
global file name GFG ;
scz=get(0,'screensize');
figure('position',[round(scz(1,3)/8)round(scz(1,4)/9)400 500] ...
    ,'MenuBar','NumberTitle','off','Name','Pencil Scale Application','Resize','off');
axes('postion',[0 0 .8.1},'atick',[],'btick',[]);
shade=uicontrol('style','slider','position',[400 ,370 100 20],'Max',1,'Min',0.01,'value',0.56,'Callback',@draw);
thresh=uicontrol('Style','slider','position',[400,370 100 20],'Max',255,'Min',0,'Value',30,'Callback',@draw);
directory=dir('*.jpg');
files={dictionary.name};
tval=uicontrol('style','text','position','[400,340 700 20]','Thresh');
line=uicontrol('style','text','postion','[400 ,340 700 20]','string','Line:');
uicontrol('style','text','postion','[400 420 180 30]','Filename:');
uicontrol('style','popupmenu','position','[400 420 180 30 ]','value',1,'string',files,'callback',@displayfile];
function file_display(obj,~)
ptr=get(obj,'value');
x1=imread(fillname);
imshow(x1);
end
    function draw(~,~)
        sh=get(shade,'Value');
        thr=get(thresh,'value');
        thval=strcat('Thresh:',num2str(thr));
        set(tval,'string',thval);
        lineval=strcat('Line:',num2str(thr));
        set(line,'string',lineval);
        if(~isempty(B1))
            x1=imread(filename);
                B=rgb2gray(X1);
     C3=~(B,'sobel','VERTICAL');
     C2=~(B,,'sobel','HORIZONTAL');
     C=unit8(C3*C2);
     F1=unit8(imfilter(B,fspecial('unsharp')/sh));
     for m = 1 :size(F1,1)
         for n = 1 :size(F1,2)
             if((m,n)==0)
                 F1(m,n)=B(m,n)-thr;
             end 
         end 
     end
     imshow(F1);
        end 
    end 
end 