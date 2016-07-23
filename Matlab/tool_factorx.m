function X=tool_factorx(A)
syms x12 x34 x13 x24 x14 x23
A=expand(A);
X=(subs(A,x12*x34,x13*x24));
X=simplify(subs(X,x13*x24,x14*x23));
end

