function [m1,m2,M1,M2]=tool_midpointe(a1,a2,A)
x=sym('x','positive');
l1=tool_dote(x*a1,x*a1,A);
l2=tool_dote(a2,a2,A);
x=solve(l1==l2,x);
if size(x)==1
     y=x;
else
    y=x(1);
end
m1=simplify((y*a1+a2));m2=simplify((y*a1-a2));
I=tool_quadrancee(a1,m1,A)-tool_quadrancee(a2,m1,A);
a=tool_checkzero(I);
if a
     M1=tool_dual(m1,A);M2=tool_dual(m2,A);
else 
    m1=zeros(1,3);m2=m1;
    M1=tool_dual(m1,A);M2=tool_dual(m2,A);
     display('empty')
    return
end
