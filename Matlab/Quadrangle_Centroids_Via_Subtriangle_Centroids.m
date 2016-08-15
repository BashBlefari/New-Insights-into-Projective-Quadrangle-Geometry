% Quadrangle centroids via subtriangle centroids

qg11=tool_meet(tool_join(a1,g11),tool_join(a2,g21),tool_join(a3,g31),tool_join(a4,g41));
qg12=tool_meet(tool_join(a1,g12),tool_join(a2,g22),tool_join(a3,g32),tool_join(a4,g42));
qg13=tool_meet(tool_join(a1,g13),tool_join(a2,g23),tool_join(a3,g33),tool_join(a4,g43));
qg14=tool_meet(tool_join(a1,g14),tool_join(a2,g24),tool_join(a3,g34),tool_join(a4,g44));

qg21=tool_meet(tool_join(a1,g11),tool_join(a2,g22),tool_join(a3,g33),tool_join(a4,g44));
qg22=tool_meet(tool_join(a1,g12),tool_join(a2,g21),tool_join(a3,g34),tool_join(a4,g43));
qg23=tool_meet(tool_join(a1,g13),tool_join(a2,g24),tool_join(a3,g31),tool_join(a4,g42));
qg24=tool_meet(tool_join(a1,g14),tool_join(a2,g23),tool_join(a3,g32),tool_join(a4,g41));
