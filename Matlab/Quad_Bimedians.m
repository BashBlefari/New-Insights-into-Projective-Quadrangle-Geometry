% The Bimedian lines of the standard quadrangle in the thesis
% constructed by first working out the midpoints

% % midpoints and midlines of the quadrangle
% [m12,m21,M12,M21]=tool_midpoint(a1,a2,A);[m34,m43,M34,M43]=tool_midpoint(a3,a4,A);
% [m13,m31,M13,M31]=tool_midpoint(a1,a3,A);[m24,m42,M24,M42]=tool_midpoint(a2,a4,A);
% [m14,m41,M14,M41]=tool_midpoint(a1,a4,A);[m23,m32,M23,M32]=tool_midpoint(a2,a3,A);
% 
% %Bimedian lines
% % for opposite sides a1a2 and a3a4
% B1234=tool_join(m12,m34);B1243=tool_join(m12,m43);
% B2134=tool_join(m21,m34);B2143=tool_join(m21,m43);
% % for opposite sides a1a3 and a2a4
% B1324=tool_join(m13,m24);B1342=tool_join(m13,m42);
% B3124=tool_join(m31,m24);B3142=tool_join(m31,m42);
% % for opposite sides a1a4 and a2a3
% B1423=tool_join(m14,m23);B1432=tool_join(m14,m32);
% B4123=tool_join(m41,m23);B4132=tool_join(m41,m32);

% The sigma value representation of the bimedian lines
% standard replacement is used 1/(A_1 A_2)=x12^2.
% this simplification only works for the standard coordinates of
B1234=[x13-x24;x23-x14;x23+x14-x13-x24];
B2143=[x24-x13;x23-x14;x23+x14+x13+x24];
B1324=[x34-x12;x14+x34+x23+x12;x23-x14];
B3142=[x12-x34;x23+x14-x34-x12;x23-x14];
B1423=[x12+x34+x13+x24;x34-x12;x24-x13];
B4132=[x34+x12-x24-x13;x34-x12;x13-x24];
B1243=[x13+x24;x23+x14;x23-x14-x13+x24];
B2134=[x13+x24;-x23-x14;x14-x23-x13+x24];
B1342=[x34+x12;x14-x23+x34-x12;-x14-x23];
B3124=[x34+x12;x23-x14+x34-x12;x14+x23];
B1432=[x12-x34+x24-x13;-x34-x12;x24+x13];
B4123=[x34-x12+x24-x13;x34+x12;x24+x13];