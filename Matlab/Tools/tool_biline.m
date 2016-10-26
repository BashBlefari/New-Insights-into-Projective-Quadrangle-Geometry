% The Biline tool works out the bilines and bipoint for a vertex. It is
% exactly the same procedure as the midpoint tool.
function [B1,B2,b1,b2]=tool_biline(A1,A2,A)
x=sym('x','positive');
l1=tool_dot(x*a1,x*a1,A);
l2=tool_dot(a2,a2,A);
x=solve(l1==l2,x);
if size(x)==1
     y=x;
else
    y=x(1);
end
B1=simplify((y*a1+a2));B2=simplify((y*a1-a2));
I=tool_quadrance(a1,B1,A)-tool_quadrance(a2,B1,A);
a=tool_checkzero(I);
if a
     b1=tool_dual(B1,A);b2=tool_dual(B2,A);
else 
    B1=zeros(3,1);B2=B1;
    b1=tool_dual(B1,A);b2=tool_dual(B2,A);
     display('empty')
    return
end
