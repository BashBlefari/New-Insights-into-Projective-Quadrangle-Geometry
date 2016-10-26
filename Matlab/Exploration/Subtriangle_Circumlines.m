% Midpoints of the quadrangle
% [m12,m21,M12,M21]=tool_midpoint(a1,a2,A);[m34,m43,M34,M43]=tool_midpoint(a3,a4,A);
% [m13,m31,M13,M31]=tool_midpoint(a1,a3,A);[m24,m42,M24,M42]=tool_midpoint(a2,a4,A);
% [m14,m41,M14,M41]=tool_midpoint(a1,a4,A);[m23,m32,M23,M32]=tool_midpoint(a2,a3,A);
% Circumlines
% for subtriangle 4
C44=tool_join(m32,m31,m21);%1->4
C43=tool_join(m23,m13,m21);%2->3
C42=tool_join(m23,m31,m12);%3->2
C41=tool_join(m32,m13,m12);%4->1
% for subtriangle 3
C33=tool_join(m21,m42,m41);%1->3
C34=tool_join(m21,m24,m14);%2->4
C31=tool_join(m12,m42,m14);%3->1
C32=tool_join(m12,m24,m41);%4->2
% for subtriangle 2
C22=tool_join(m41,m31,m43);%1->2
C21=tool_join(m14,m13,m43);%2->1
C24=tool_join(m14,m31,m34);%3->4
C23=tool_join(m41,m13,m34);%4->3
% for subtriangle 1
C11=tool_join(m43,m42,m32);
C12=tool_join(m43,m24,m23);
C13=tool_join(m34,m42,m23);
C14=tool_join(m34,m24,m32);

