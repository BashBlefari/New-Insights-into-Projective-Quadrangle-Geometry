function a=checkzero(I)
I=factor(I);I=simplify(I);
x=length(I);
a=0;
for i=1:x
    if I(1,i)==0
        a=1;
    end
end