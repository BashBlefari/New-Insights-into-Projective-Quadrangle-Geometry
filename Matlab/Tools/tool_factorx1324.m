% A tool which tries to utilise the sigma relations
function X=tool_factorx1324(A)
syms x12 x34 x13 x24 x14 x23
B=A;
B=subs(B,x13*x24,x14*x23);
B=subs(B,x14*x23,x12*x34);
B=subs(B,x12*x34,x13*x24);
X=tool_simplex(B);
end