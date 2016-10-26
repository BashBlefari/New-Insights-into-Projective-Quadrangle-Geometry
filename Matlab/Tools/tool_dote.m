% Dot(e) works out the dot product for actual valued points and lines not
% just symmbolic ones. The e is for example and is used in the example .m
% files.
function a=tool_dote(a1,a2,A)
b1=size(a1);
b2=size(a2);
a=0;
if b1(1,1)==1 && b2(1,1)==1
    a=(a1*A*a2.');
elseif b1(1,2)==1 && b2(1,2)==1
    A1=tool_dual(a1,A);A2=tool_dual(a2,A);
    a=(A1*A*A2.');
end