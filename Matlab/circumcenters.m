 % circumcenters of the four triangle produced in the quadrangle
% c41=tmeet(M12,M23,M31);c42=tmeet(M12,M32,M13);c43=tmeet(M21,M23,M13);c44=tmeet(M21,M32,M31);
% c33=tmeet(M12,M24,M41);c34=tmeet(M12,M42,M14);c31=tmeet(M21,M42,M41);c32=tmeet(M21,M24,M14);
% c22=tmeet(M31,M43,M41);c21=tmeet(M13,M43,M14);c24=tmeet(M13,M34,M41);c23=tmeet(M31,M34,M14);
% c14=tmeet(M23,M43,M24);c13=tmeet(M32,M43,M42);c12=tmeet(M23,M34,M42);c11=tmeet(M32,M34,M24);
%common multiplies and factor out
c411=tmeet(M32,M31,M21);c422=tmeet(M23,M13,M21);c433=tmeet(M23,M31,M12);c444=tmeet(M32,M13,M12);
c313=tmeet(M21,M24,M14);c324=tmeet(M21,M42,M41);c331=tmeet(M12,M24,M41);c342=tmeet(M12,M42,M14);
c214=tmeet(M14,M31,M34);c223=tmeet(M41,M13,M34);c232=tmeet(M41,M31,M43);c241=tmeet(M14,M13,M43);
c112=tmeet(M34,M24,M32);c121=tmeet(M34,M42,M23);c134=tmeet(M43,M24,M23);c143=tmeet(M43,M42,M32);