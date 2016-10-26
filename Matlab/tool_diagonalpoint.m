function [d1,d2,d3]=tool_diagonalpoint(a1,a2,a3,a4)
% lines of quadrangle
 L12=tool_join(a1,a2);L23=tool_join(a2,a3);L13=tool_join(a1,a3);
 L14=tool_join(a1,a4);L24=tool_join(a2,a4);L34=tool_join(a3,a4);

% diagonal triangle
 d1=tool_meet(L12,L34)
 d2=tool_meet(L13,L24)
 d3=tool_meet(L14,L23)