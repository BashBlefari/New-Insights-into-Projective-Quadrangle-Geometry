% midpoints and midlines of the quadrangle
[m12,m21,M12,M21]=tool_midpoint(a1,a2,A);[m34,m43,M34,M43]=tool_midpoint(a3,a4,A);
[m13,m31,M13,M31]=tool_midpoint(a1,a3,A);[m24,m42,M24,M42]=tool_midpoint(a2,a4,A);
[m14,m41,M14,M41]=tool_midpoint(a1,a4,A);[m23,m32,M23,M32]=tool_midpoint(a2,a3,A);

% Median lines
% triangle 1, \overline{a2a3a4}
D123=tool_join(a4,m23);D132=tool_join(a4,m32);
D124=tool_join(a3,m24);D142=tool_join(a3,m42);
D134=tool_join(a2,m34);D143=tool_join(a2,m43);
% triangle 2, \overline{a1a3a4}
D213=tool_join(a4,m13);D231=tool_join(a4,m31);
D214=tool_join(a3,m14);D241=tool_join(a3,m41);
D234=tool_join(a1,m34);D243=tool_join(a1,m43);
% triangle 3, \overline{a1a2a4}
D312=tool_join(a4,m12);D321=tool_join(a4,m21);
D314=tool_join(a2,m14);D341=tool_join(a2,m41);
D324=tool_join(a1,m24);D342=tool_join(a1,m42);
% triangle 4, \overline{a1a2a3}
D412=tool_join(a3,m12);D421=tool_join(a3,m21);
D413=tool_join(a2,m13);D431=tool_join(a2,m31);
D423=tool_join(a1,m23);D432=tool_join(a1,m32);

