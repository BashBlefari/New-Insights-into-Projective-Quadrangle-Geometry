function a=tool_dot(a1,a2,A)
b1=size(a1);
b2=size(a2);
a=0;
if b1(1,1)==1 && b2(1,1)==1
    x=factor(a1*A*a2.');
    a=1;
    for i=1:length(x)
        a=a*x(1,i);
    end
elseif b1(1,2)==1 && b2(1,2)==1
    A1=tool_dual(a1,A);A2=tool_dual(a2,A);
    x=factor(A1*A*A2.');
    a=1;
    for i=1:length(x)
        a=a*x(1,i);
    end
end