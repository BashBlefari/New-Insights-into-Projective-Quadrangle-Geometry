% Example of triangle transformation for thesis
% Standard bilinear form for hyperbolic geometry
A=[1 0 0;0 1 0;0 0 -1];
% Points of triangle example
a1=[0.5 0.5 1];a2=[-0.1 0.1 1];a3=[-0.4 -0.4 1];
% Lines of the triangle
L1=tool_joine(a2,a3);L2=tool_joine(a1,a3);L3=tool_joine(a1,a2);
% Dual points of the triangle
l1=tool_duale(L1,A);l2=tool_duale(L2,A);l3=tool_duale(L3,A);
% Altitude lines
N1=tool_joine(a1,l1);N2=tool_joine(a2,l2);N3=tool_joine(a3,l3);
% Orthocenter
o=tool_meete(N1,N2,N3);