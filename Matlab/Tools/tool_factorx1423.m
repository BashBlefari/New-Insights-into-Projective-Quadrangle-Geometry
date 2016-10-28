% A tool which tries to utilise the sigma relations
function X=tool_factorx1423(A)
syms x12 x34 x13 x24 x14 x23
B=A;
B=subs(B,x14*x23,x12*x34);
B=subs(B,x12*x34,x13*x24);
B=subs(B,x13*x24,x14*x23);
X=simplify(B);
end
