% The simplified versions of the midpoints for the standard triangle 
% syms y1 y2 y3
% A1=[0 -y3 y2];B1=[0 -y3 -y2];
% A2=[y3 0 y1];B2=[y3 0 -y1];
% A3=[y2 -y1 0];B3=[y2 y1 0];

% The Apollonian points of the triangle
d11=tool_meet(A1,T1);d12=tool_meet(B1,T1);
d21=tool_meet(A2,T2);d22=tool_meet(B2,T2);
d31=tool_meet(A3,T3);d32=tool_meet(B3,T3);