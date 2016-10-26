% Example of Quadrangle for centroid structures over finite fields
% Standard bilinear form for hyperbolic geometry
J=[1 0 0;0 1 0;0 0 -1];
% Points of triangle example
a1=[-1 2 1];a2=[5 1 1];a3=[1 -3 1];a4=[-2 -1 1];
% Lines of quadrangle
L12=tool_joine(a1,a2);L34=tool_joine(a3,a4);
L13=tool_joine(a1,a3);L24=tool_joine(a2,a4);
L14=tool_joine(a1,a4);L23=tool_joine(a2,a3);
% Diagonal points
d1=tool_meete(L12,L34);d2=tool_meete(L13,L24);d3=tool_meete(L14,L23);
% Midpoints
[m12,m21]=tool_midpointe(a1,a2,J);
[m34,m43]=tool_midpointe(a3,a4,J);
[m13,m31]=tool_midpointe(a1,a3,J);
[m24,m42]=tool_midpointe(a2,a4,J);
[m14,m41]=tool_midpointe(a1,a4,J);
[m23,m32]=tool_midpointe(a2,a3,J);
% Subtriangle medians and centroids
% Subtriangle 1 a2a3a4
% medians
D123=tool_joine(a4,m23);D132=tool_joine(a4,m32);
D124=tool_joine(a3,m24);D142=tool_joine(a3,m42);
D134=tool_joine(a2,m34);D143=tool_joine(a2,m43);
% centroids
g11=tool_meet(D134,D124,D123);
g12=tool_meet(D134,D142,D132);
g13=tool_meet(D143,D124,D132);
g14=tool_meet(D143,D142,D123);
% Subtriangle medians and centroids
% Subtriangle 2 a1a3a4
% medians
D213=tool_joine(a4,m13);D231=tool_joine(a4,m31);
D214=tool_joine(a3,m14);D241=tool_joine(a3,m41);
D234=tool_joine(a1,m34);D243=tool_joine(a1,m43);
% centroids
g22=tool_meete(D214,D213,D234);
g21=tool_meete(D241,D231,D234);
g24=tool_meete(D241,D213,D243);
g23=tool_meete(D214,D231,D243);
% Subtriangle medians and centroids
% Subtriangle 3 a1a2a4
% medians
D312=tool_joine(a4,m12);D321=tool_joine(a4,m21);
D314=tool_joine(a2,m14);D341=tool_joine(a2,m41);
D324=tool_joine(a1,m24);D342=tool_joine(a1,m42);
% centroids
g33=tool_meete(D312,D324,D314);
g34=tool_meete(D312,D342,D341);
g31=tool_meete(D321,D324,D341);
g32=tool_meete(D321,D342,D314);
% Subtriangle medians and centroids
% Subtriangle 3 a1a2a4
% medians
D412=tool_joine(a3,m12);D421=tool_joine(a3,m21);
D413=tool_joine(a2,m13);D431=tool_joine(a2,m31);
D423=tool_joine(a1,m23);D432=tool_joine(a1,m32);
% centroids
g44=tool_meete(D423,D413,D412);
g43=tool_meete(D432,D431,D412);
g42=tool_meete(D432,D413,D421);
g41=tool_meete(D423,D431,D421);
% Quadrangle centroids
q1=tool_meet(tool_join(a3,g31),tool_join(a4,g41),tool_join(a1,g11),tool_join(a2,g21));
q2=tool_meet(tool_join(a1,g12),tool_join(a2,g22),tool_join(a3,g32),tool_join(a4,g42));
q3=tool_meet(tool_join(a1,g13),tool_join(a2,g23),tool_join(a3,g33),tool_join(a4,g43));
q4=tool_meet(tool_join(a1,g14),tool_join(a2,g24),tool_join(a3,g34),tool_join(a4,g44));

qe=tool_meet(tool_join(a3,g33),tool_join(a4,g44),tool_join(a1,g11),tool_join(a2,g22));
qa=tool_meet(tool_join(a1,g12),tool_join(a2,g21),tool_join(a3,g34),tool_join(a4,g43));
qb=tool_meet(tool_join(a1,g13),tool_join(a2,g24),tool_join(a3,g31),tool_join(a4,g42));
qg=tool_meet(tool_join(a1,g14),tool_join(a2,g23),tool_join(a3,g32),tool_join(a4,g41));
% Diagonal triangles
% lines and diagonal triangle of quadrangle q1q2q3q4
 Lb12=tool_join(q1,q2);Lb34=tool_join(q3,q4);
 Lb23=tool_join(q2,q3);Lb24=tool_join(q2,q4);
 Lb13=tool_join(q1,q3);Lb14=tool_join(q1,q4);
% lines and diagonal triangle of quadrangle q1234q2143q3412q4321
 La12=tool_join(qe,qa);
 La23=tool_join(qa,qb);
 La13=tool_join(qe,qb);
 La14=tool_join(qe,qg);
 La24=tool_join(qa,qg);
 La34=tool_join(qb,qg);

 da1=tool_meet(La12,La34);
 da2=tool_meet(La13,La24);
 da3=tool_meet(La14,La23);

 db1=tool_meet(Lb12,Lb34);
 db2=tool_meet(Lb13,Lb24);
 db3=tool_meet(Lb14,Lb23);
% Perspective triangles
p3=tool_meet(tool_join(da1,db1),tool_join(da2,db2),tool_join(da3,db3));
p1=tool_meet(tool_join(d1,da1),tool_join(d2,da2),tool_join(d3,da3));
p2=tool_meet(tool_join(d1,db1),tool_join(d2,db2),tool_join(d3,db3));
L=tool_join(p1,p2,p3);

pl3=tool_meet(tool_joins(d1,d2),tool_join(da1,da2),tool_join(db1,db2));
pl2=tool_meet(tool_joins(d1,d3),tool_join(da1,da3),tool_join(db1,db3));
pl1=tool_meet(tool_joins(d2,d3),tool_join(da2,da3),tool_join(db2,db3));
DL=tool_join(pl1,pl2,pl3);