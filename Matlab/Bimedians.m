% midpoints of the quadrangle
[m12,m21,M12,M21]=tool_midpoint(a1,a2,A);[m34,m43,M34,M43]=tool_midpoint(a3,a4,A);
[m13,m31,M13,M31]=tool_midpoint(a1,a3,A);[m24,m42,M24,M42]=tool_midpoint(a2,a4,A);
[m14,m41,M14,M41]=tool_midpoint(a1,a4,A);[m23,m32,M23,M32]=tool_midpoint(a2,a3,A);

%Bimedian lines
% for opposite sides a1a2 and a3a4
B1234=tool_join(m12,m34);B1243=tool_join(m12,m43);
B2134=tool_join(m21,m34);B2143=tool_join(m21,m43);
% for opposite sides a1a3 and a2a4
B1324=tool_join(m13,m24);B1342=tool_join(m13,m42);
B3124=tool_join(m31,m24);B3142=tool_join(m31,m42);
% for opposite sides a1a4 and a2a3
B1423=tool_join(m14,m23);B1432=tool_join(m14,m32);
B4123=tool_join(m41,m23);B4132=tool_join(m41,m32);
