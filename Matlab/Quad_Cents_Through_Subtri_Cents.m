% Quadrangle centroids via subtriangle centroids

q11=tool_simplex((tool_meet(tool_join(a1,g11),tool_join(a2,g21),tool_join(a3,g31),tool_join(a4,g41))));
q12=tool_simplex((tool_meet(tool_join(a1,g12),tool_join(a2,g22),tool_join(a3,g32),tool_join(a4,g42))));
q13=tool_simplex((tool_meet(tool_join(a1,g13),tool_join(a2,g23),tool_join(a3,g33),tool_join(a4,g43))));
q14=tool_simplex((tool_meet(tool_join(a1,g14),tool_join(a2,g24),tool_join(a3,g34),tool_join(a4,g44))));

q21=tool_simplex((tool_meet(tool_join(a3,g33),tool_join(a4,g44),tool_join(a1,g11),tool_join(a2,g22))));
q22=tool_simplex((tool_meet(tool_join(a1,g12),tool_join(a2,g21),tool_join(a3,g34),tool_join(a4,g43))));
q23=tool_simplex((tool_meet(tool_join(a1,g13),tool_join(a2,g24),tool_join(a3,g31),tool_join(a4,g42))));
q24=tool_simplex((tool_meet(tool_join(a1,g14),tool_join(a2,g23),tool_join(a3,g32),tool_join(a4,g41))));

% To simplify these expressions further use the tool_factorx1234, tool_factorx1324 or tool_factorx1423 tool
% to utilise the sigma relations.
% These tools show that the four g-lines associated with a midpoint consistent set
% of subtriangle centroids are concurrent at a point.
% To change the representation of any of the quadrangle centroids all that needs to be done is change the order
% of the g-lines in the tool_meet tool.