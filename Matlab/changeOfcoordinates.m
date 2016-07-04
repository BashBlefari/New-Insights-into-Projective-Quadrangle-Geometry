% points of quadrangle
a1=[1 1 1];a2=[-1 -1 1];a3=[1 -1 1];a4=[-1 1 1];

%quadrances
% q12=quadrance(a1,a2,A);q13=quadrance(a1,a3,A);q14=quadrance(a1,a4,A);
% q23=quadrance(a3,a2,A);q24=quadrance(a2,a4,A);q34=quadrance(a4,a3,A);

% %lines of quadrangle
% L12=sjoin(a1,a2);L23=sjoin(a2,a3);L13=sjoin(a1,a3);
% L14=sjoin(a1,a4);L24=sjoin(a2,a4);L34=sjoin(a3,a4);
% 
% % diagonal triangle
% d1=smeet(L12,L34);d2=smeet(L13,L24);d3=smeet(L14,L23);

% % midpoints
[m12,m21,M12,M21]=midpoint(a1,a2,A);[m34,m43,M34,M43]=midpoint(a3,a4,A);
[m13,m31,M13,M31]=midpoint(a1,a3,A);[m24,m42,M24,M42]=midpoint(a2,a4,A);
[m14,m41,M14,M41]=midpoint(a1,a4,A);[m23,m32,M23,M32]=midpoint(a2,a3,A);

% Circumlines
C41=tjoin(m32,m31,m21);C42=tjoin(m23,m13,m21);C43=tjoin(m23,m31,m12);C44=tjoin(m32,m13,m12);
C31=tjoin(m21,m42,m41);C32=tjoin(m21,m24,m14);C33=tjoin(m12,m42,m14);C34=tjoin(m12,m24,m41);
C21=tjoin(m41,m31,m43);C22=tjoin(m14,m13,m43);C23=tjoin(m14,m31,m34);C24=tjoin(m41,m13,m34);
C11=tjoin(m42,m32,m43);C12=tjoin(m24,m23,m43);C13=tjoin(m42,m23,m34);C14=tjoin(m24,m32,m34);

% circumcenters
% first label
% c41=tmeet(M32,M31,M21);c42=tmeet(M23,M13,M21);c43=tmeet(M23,M31,M12);c44=tmeet(M32,M13,M12);
% c31=tmeet(M21,M42,M41);c32=tmeet(M21,M24,M14);c33=tmeet(M12,M42,M14);c34=tmeet(M12,M24,M41);
% c21=tmeet(M41,M31,M43);c22=tmeet(M14,M13,M43);c23=tmeet(M14,M31,M34);c24=tmeet(M41,M13,M34);
% c11=tmeet(M43,M42,M32);c12=tmeet(M43,M24,M23);c13=tmeet(M34,M42,M23);c14=tmeet(M34,M24,M32);

% second label
c41=tmeet(M32,M31,M21);c42=tmeet(M23,M13,M21);c43=tmeet(M23,M31,M12);c44=tmeet(M32,M13,M12);
c31=tmeet(M21,M24,M14);c32=tmeet(M21,M42,M41);c33=tmeet(M12,M24,M41);c34=tmeet(M12,M42,M14);
c21=tmeet(M14,M31,M34);c22=tmeet(M41,M13,M34);c23=tmeet(M41,M31,M43);c24=tmeet(M14,M13,M43);
c11=tmeet(M34,M24,M32);c12=tmeet(M34,M42,M23);c13=tmeet(M43,M24,M23);c14=tmeet(M43,M42,M32);


%bimedains
%inside {{m12,m34},{m13,m24},{m14,m23}}, 
%outside {{m21,m43},{m31,m42},{m41,m32}}
% % positive polarity
% m12m34=join(m12,m34);m13m24=join(m13,m24);m14m23=join(m14,m23);
% m21m43=join(m21,m43);m31m42=join(m31,m42);m41m32=join(m41,m32);
% %negative polarity
% m21m34=join(m21,m34);m31m24=join(m31,m24);m41m23=join(m41,m23);
% m12m43=join(m12,m43);m13m42=join(m13,m42);m14m32=join(m14,m32);
% 
% %quadrangle centroids
% % first four positive polarity
% % ci1 "center"
% %cp=tmeet(m21m43,m31m42,m41m32)
% cp1=tmeet(m12m34,m13m24,m14m23);
% cp2=tmeet(m12m34,m31m42,m41m32);
% cp3=tmeet(m21m43,m13m24,m41m32);
% cp4=tmeet(m21m43,m31m42,m14m23);
% % second four negative polarity
% cn1=tmeet(m21m34,m31m24,m41m23);
% cn2=tmeet(m21m34,m13m42,m14m32);
% cn3=tmeet(m12m43,m31m24,m14m32);
% cn4=tmeet(m12m43,m13m42,m41m23);

% perspective quadrangle lines
%P11=tjoin(a1,cp1,cn1);P12=tjoin(a1,cp2,cn2);P13=tjoin(a1,cp3,cn3);P14=tjoin(a1,cp4,cn4);
%P21=tjoin(a2,cp3,cn4);P22=tjoin(a2,cp4,cn3);P23=tjoin(a2,cp1,cn2);P24=tjoin(a2,cp2,cn1);
%P31=tjoin(a3,cn4,cp2);P32=tjoin(a3,cp3,cn1);P33=tjoin(a3,cp2,cn4);P34=tjoin(a3,cp1,cn3);
%P41=tjoin(a4,cp2,cn3);P42=tjoin(a4,cp1,cn4);P43=tjoin(a4,cp4,cn1);P44=tjoin(a4,cp3,cn2);