% Dual(s) works out the dual of a point or line for actual values, not just
% symmbolic ones.
function A1=tool_duals(a1,A)
b1=size(a1);
if b1(1,1)==1
    A1=(A*a1.');
elseif b1(1,2)==1
    B=-det(A)/A;
    A1=(a1.'*B);
end