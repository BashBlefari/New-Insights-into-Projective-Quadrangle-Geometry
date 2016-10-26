% Triangle Centrian lines

J1=tool_join(d11,d22,d32);
J2=tool_join(d12,d21,d32);
J3=tool_join(d12,d22,d31);
J4=tool_join(d11,d21,d31);

% Triangle Centrian points
j1=tool_dual(J1,C);
j2=tool_dual(J2,C);
j3=tool_dual(J3,C);
j4=tool_dual(J4,C);