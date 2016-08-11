d=sym('d');g=sym('g');f=sym('f');
t=sym('t','positive');r=sym('r','positive');s=sym('s','positive');
a=sym('a','positive');b=sym('b','positive');c=sym('c','positive');

% bilinear form
 A=[a d f;d b g;f g c];
 B=det(A)*inv(A);
%A=[1 0 0;0 1 0;0 0 1];
% points of quadrangle
a1=[1 1 1];a2=[-1 -1 1];a3=[1 -1 1];a4=[-1 1 1];
