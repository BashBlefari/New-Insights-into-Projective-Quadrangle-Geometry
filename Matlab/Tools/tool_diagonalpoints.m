% Diagonal point(s) works out the diagonal points for a quadrangle with
% actual values as points, and not symmbolic values.
function [d1,d2,d3]=tool_diagonalpoints(a1,a2,a3,a4)
% lines of quadrangle
 L12=tool_joins(a1,a2);L23=tool_joins(a2,a3);L13=tool_joins(a1,a3);
 L14=tool_joins(a1,a4);L24=tool_joins(a2,a4);L34=tool_joins(a3,a4);

% diagonal triangle
 d1=tool_meets(L12,L34);d2=tool_meets(L13,L24);d3=tool_meets(L14,L23);