% checks if two projective vectors are equal by checking if they have a
% common ratio.
function a=tool_isequal(x,y)
r1=x(1)/y(1);
r2=x(2)/y(2);
r3=x(3)/y(3);
a1=tool_checkzero(r2-r3);
a2=tool_checkzero(r1-r3);
a3=tool_checkzero(r1-r2);
a=0;
if a1 && a2 && a3
    a=1;
end
end