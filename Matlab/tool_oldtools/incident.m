function x=incident(a,L)
X=a*L;
for i=1:3
    X=factorx(X);
    I=checkzero(X);
    if I
        x=1;
        return
    else
        x=0;
    end
end
end