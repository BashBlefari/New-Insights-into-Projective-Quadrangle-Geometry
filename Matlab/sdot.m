function a=sdot(a1,a2,A)
x=factor(a1*A*a2.');
    a=1;
    for i=1:length(x)
        a=a*x(1,i);
    end
end