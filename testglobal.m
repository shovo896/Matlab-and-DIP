global globalVar ; 
globalVar = 42 ; 
disp(globalVar); 
testGlobalVar() 
function testGlobalVar()
    global globalVar ; 
    globalVar = globalVar + 10 ; 
    disp(globalVar) 
end 