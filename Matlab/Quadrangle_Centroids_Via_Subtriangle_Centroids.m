% Quadrangle centroids via subtriangle centroids

q1111=tool_simplex((tool_meet(tool_join(a3,g31),tool_join(a4,g41),tool_join(a1,g11),tool_join(a2,g21))));
q2222=tool_simplex(tool_factorx1234(tool_meet(tool_join(a1,g12),tool_join(a2,g22),tool_join(a3,g32),tool_join(a4,g42))));
q3333=tool_simplex(tool_factorx1234(tool_meet(tool_join(a1,g13),tool_join(a2,g23),tool_join(a3,g33),tool_join(a4,g43))));
q4444=tool_simplex(tool_factorx1234(tool_meet(tool_join(a1,g14),tool_join(a2,g24),tool_join(a3,g34),tool_join(a4,g44))));

q1234=tool_simplex(tool_factorx1234(tool_meet(tool_join(a3,g33),tool_join(a4,g44),tool_join(a1,g11),tool_join(a2,g22))));
q2143=tool_simplex(tool_factorx1234(tool_meet(tool_join(a1,g12),tool_join(a2,g21),tool_join(a3,g34),tool_join(a4,g43))));
q3412=tool_simplex(tool_factorx1234(tool_meet(tool_join(a1,g13),tool_join(a2,g24),tool_join(a3,g31),tool_join(a4,g42))));
q4321=tool_simplex(tool_factorx1234(tool_meet(tool_join(a1,g14),tool_join(a2,g23),tool_join(a3,g32),tool_join(a4,g41))));
