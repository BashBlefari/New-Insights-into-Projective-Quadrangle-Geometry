function x=tool_tidy(a)
syms x12 x34 x13 x24 x14 x23
x=tool_tidy1324(a);
x=tool_tidy1423(x);
x=tool_tidy1423(x);
x=(subs(x,x14*x23,x12*x34));
x=subs(x,x12*x34,x13*x24);
x=(subs(x,x13*x24,x14*x23));
x=tool_simplex(x);
end
