% Dual workds out the the dual of a point or line
function A1=tool_dual(a1,A)
b1=size(a1);
if b1(1,1)==1
    A1=simplify(A*a1.');
elseif b1(1,2)==1
    B=-det(A)/A;
    A1=simplify(a1.'*B);
end