function [m1,m2,M1,M2]=midpoint(a1,a2,A)
x=sym('x','positive');
l1=dot(x*a1,x*a1,A);
l2=dot(a2,a2,A);
x=solve(l1==l2,x);
if size(x)==1
     y=x;
else
    y=x(1);
end
m1=simplify((y*a1+a2));m2=simplify((y*a1-a2));
M1=simplify((A*m1.'));M2=simplify((A*m2.'));