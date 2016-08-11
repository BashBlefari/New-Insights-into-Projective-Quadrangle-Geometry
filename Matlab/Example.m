% Example of triangle transformation for thesis
% Standard bilinear form for hyperbolic geometry
J=[1 0 0;0 1 0;0 0 -1];
% Points of triangle example
a1=[0.5 0.5 1];a2=[-0.1 0.1 1];a3=[-0.4 -0.4 1];
% Lines of the triangle
L1=tool_joine(a2,a3);L2=tool_joine(a1,a3);L3=tool_joine(a1,a2);
% Dual points of the triangle
l1=tool_duale(L1,J);l2=tool_duale(L2,J);l3=tool_duale(L3,J);
% Altitude lines
N1=tool_joine(a1,l1);N2=tool_joine(a2,l2);N3=tool_joine(a3,l3);
% Orthocenter
h=tool_meete(N1,N2,N3);
h=h/h(3);
% finding the transformation
N4=[a1;a2;a3];
syms x y z
h1=vpasolve([x y z]*N4==h,[x y z]);
h1=-1*[h1.x h1.y h1.z];
N=[h1(1) 0 0;0 h1(2) 0;0 0 h1(3)]*N4; 
M=inv(N);
% transformed bilinear form
A=N*J*N.';
B=M.'*J*M;
B=B/B(1,2);