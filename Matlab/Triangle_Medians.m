% The simplified versions of the midpoints for the standard triangle
syms x1 x2 x3
n1=[0 x3 x2];m1=[0 x3 -x2];
n2=[x3 0 x1];m2=[x3 0 -x1];
n3=[x2 x1 0];m3=[x2 -x1 0];

% The median lines of the triangle
D11=tool_join(n1,t1);D12=tool_join(m1,t1);
D21=tool_join(n2,t2);D22=tool_join(m2,t2);
D31=tool_join(n3,t3);D32=tool_join(m3,t3);