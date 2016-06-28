function [C,b1,b2,b3,a]=common(x)
syms z1 z2 z3;
x1=[z1; z2; z3];
y1=x1;
for i=1:3
    x1(i,1)=expand(x(i));
end
x2=factor(x1(1,1));y1(1,1)=size(x2,2);b1=x2;
x3=factor(x1(2,1));y1(2,1)=size(x3,2);b2=x3;
x4=factor(x1(3,1));y1(3,1)=size(x4,2);b3=x4;
a=y1;
y2=0;
for i=1:3
    if le(y2,y1(i,1))
        y2=y1(i,1);
    end
end
C=zeros(3,double(y2));
for i=1:y1(1,1)
    for j=1:y1(2,1)
        if eq(x2(1,i),x3(1,j))
            C(1,j)=1;
        end
    end
    for j=1:y1(3,1)
        if eq(x2(1,i),x4(1,j))
            C(2,j)=1;
        end
    end
end
for i=1:y1(2,1)
    for j=1:y1(3,1)
        if eq(x3(1,i),x4(1,j))
            C(3,j)=1;
        end
    end
end