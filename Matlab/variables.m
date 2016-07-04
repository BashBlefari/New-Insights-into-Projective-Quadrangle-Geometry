m=sym('m','positive');n=sym('n','positive');k=sym('k','positive');
d=sym('d');g=sym('g');f=sym('f');
x1=sym('x1','positive');
t=sym('t','positive');r=sym('r','positive');s=sym('s','positive');
a=sym('a','positive');b=sym('b','positive');c=sym('c','positive');
%a=m/(k*n);b=n/(m*k);c=k/(n*m);
%lt(0,2*(d+e+f)+a+b+c);
%x1=2*(e+f+d)+a+b+c;
%eq(x1,r^2/a);eq((x1),s^(2)/b);eq((x1),t^(2)/c);

% bilinear form
 A=[a d f;d b g;f g c];
 B=det(A)*inv(A);
%A=[1 0 0;0 1 0;0 0 1];
% points of quadrangle
a1=[1 1 1];a2=[-1 1 1];a3=[-1 -1 1];a4=[1 -1 1];
