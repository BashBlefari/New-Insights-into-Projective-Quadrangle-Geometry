% This is for simplification of computations replacing 1/(A_1 A_2) with
% x12^2 and so on.
syms x12 x34 x13 x24 x14 x23;
D412=[x13;x23;x23-x13];D421=[-x13;x23;x23+x13];
D413=[-x12;x12+x23;x23];D431=[x12;x23-x12;x23];
D423=[-x12-x13;x12;x13];D432=[x12-x13;-x12;x13];

D312=[x24;x14;x24-x14];D321=[x24;-x14;x24+x14];
D314=[x12+x24;-x12;x24];D341=[x24-x12;x12;x24];
D324=[x23;-x23-x34;x34];D342=[x23;x34-x23;-x34];

D213=[x34;x14+x34;-x14];D231=[x34;x34-x14;x14];
D214=[x13+x34;x34;-x13];D241=[x34-x13;x34;x13];
D234=[x13;-x14;x14-x13];D243=[x13;x14;-x14-x13];

D123=[x24+x34;x34;x24];D132=[x24-x34;-x34;x24];
D124=[x34;x23+x34;x23];D142=[x34;x34-x23;-x23];
D134=[-x24;x23;x23-x24];D143=[x24;x23;x23+x24];

% Centoids
% subtriangle 4
g41=meettx(D423,D413,D412);
g42=meettx(D432,D431,D412);
g43=meettx(D432,D413,D421);
g44=meettx(D423,D431,D421);
%subtriangle 3
g31=meettx(D312,D324,D314);
g32=meettx(D312,D342,D341);
g33=meettx(D321,D324,D341);
g34=meettx(D321,D342,D314);
% subtriangle 2
g21=meettx(D214,D213,D234);
g22=meettx(D241,D231,D234);
g23=meettx(D241,D213,D243);
g24=meettx(D214,D231,D243);
% subtriangle 1
g11=meettx(D134,D124,D123);
g12=meettx(D134,D142,D132);
g13=meettx(D143,D124,D132);
g14=meettx(D143,D142,D123);
