% Midpoints of the quadrangle
[m12,m21,M12,M21]=midpoint(a1,a2,A);[m34,m43,M34,M43]=midpoint(a3,a4,A);
[m13,m31,M13,M31]=midpoint(a1,a3,A);[m24,m42,M24,M42]=midpoint(a2,a4,A);
[m14,m41,M14,M41]=midpoint(a1,a4,A);[m23,m32,M23,M32]=midpoint(a2,a3,A);
% Circumlines
% for subtriangle 4
C41=jointx(m32,m31,m21);
C42=jointx(m23,m13,m21);
C43=jointx(m23,m31,m12);
C44=jointx(m32,m13,m12);
% for subtriangle 3
C31=jointx(m21,m42,m41);
C32=jointx(m21,m24,m14);
C33=jointx(m12,m42,m14);
C34=jointx(m12,m24,m41);
% for subtriangle 2
C21=jointx(m41,m31,m43);
C22=jointx(m14,m13,m43);
C23=jointx(m14,m31,m34);
C24=jointx(m41,m13,m34);
% for subtriangle 1
C11=jointx(m43,m42,m32);
C12=jointx(m43,m24,m23);
C13=jointx(m34,m42,m23);
C14=jointx(m34,m24,m32);

