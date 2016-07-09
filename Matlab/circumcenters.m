[m12,m21,M12,M21]=midpoint(a1,a2,A);[m13,m31,M13,M31]=midpoint(a1,a3,A);
[m23,m32,M23,M32]=midpoint(a2,a3,A);[m14,m41,M14,M41]=midpoint(a1,a4,A);
[m24,m42,M24,M42]=midpoint(a2,a4,A);[m34,m43,M34,M43]=midpoint(a3,a4,A);
% circumcenters of the four triangle produced in the quadrangle
% subtriangle 4
c41=tmeetx(M32,M31,M21);
c42=tmeetx(M23,M13,M21);
c43=tmeetx(M23,M31,M12);
c44=tmeetx(M32,M13,M12);
% subtriangle 3
c31=tmeetx(M21,M42,M41);
c32=tmeetx(M21,M24,M14);
c33=tmeetx(M12,M42,M14);
c34=tmeetx(M12,M24,M41);
% subtriangle 2
c21=tmeetx(M41,M31,M43);
c22=tmeetx(M14,M13,M43);
c23=tmeetx(M14,M31,M34);
c24=tmeetx(M41,M13,M34);
% subtriangle 1
c11=tmeetx(M43,M42,M32);
c12=tmeetx(M43,M24,M23);
c13=tmeetx(M34,M42,M23);
c14=tmeetx(M34,M24,M32);