function a=tool_finverse(b,m)
% finite field inverse
a=0;
for i=1:m
    c=mod(b*i,m);
    if c==1
        a=i;
        return
    end
end
    