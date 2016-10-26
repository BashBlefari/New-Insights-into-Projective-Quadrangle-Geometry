% finite field inverse for finite field example
function a=tool_finverse(b,m)
a=0;
for i=1:m
    c=mod(b*i,m);
    if c==1
        a=i;
        return
    end
end
    