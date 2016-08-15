function x=tool_incident(a,L)
l=size(a);
if l(1)==1
    X=a*L;
else
    X=L*a;
end
for i=1:3
    X=tool_factorx(X);
    I=tool_checkzero(X);
    if I
        x=1;
        return
    else
        x=0;
    end
end
end