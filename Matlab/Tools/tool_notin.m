% Notin checks that a vector does not have a specific entry
function a=tool_notin(x,I)
n=length(I);
a=1;
for i=1:n
    if x==I(i)
        a=0;
    end
end
end