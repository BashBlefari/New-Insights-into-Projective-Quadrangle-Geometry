function A1=tool_duale(a1,A)
b1=size(a1);
if b1(1,1)==1
    A1=(A*a1.');
elseif b1(1,2)==1
    B=-det(A)*inv(A);
    A1=(a1.'*B);
end
end