% The Checkzero tool use the sigma relations to work out if a number is
% equal to zero.
function a=tool_checkzero(I)
I=factor(I);I=tool_factorx1234(simplify(expand(I)));
x=length(I);
syms x12 x34 x13 x24 x14 x23;
a=0;
for i=1:x
    b=I(1,i);
    if b==0
        a=1;
        return
    elseif b==x14*x23-x13*x24||b==x14*x23-x12*x34||b==x12*x34-x13*x24
        a=1;
        return
    elseif -b==x14*x23-x13*x24||-b==x14*x23-x12*x34||-b==x12*x34-x13*x24
        a=1;
        return
    end
end