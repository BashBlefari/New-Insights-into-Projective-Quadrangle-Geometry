% Quadrangle centroid quadrangles and their respective diagonal triangle
% lines and diagonal triangle of quadrangle a1a2a3a4
 L12=tool_joins(a1,a2);L23=tool_joins(a2,a3);L13=tool_joins(a1,a3);
 L14=tool_joins(a1,a4);L24=tool_joins(a2,a4);L34=tool_joins(a3,a4);
 d1=tool_meets(L12,L34);d2=tool_meets(L13,L24);d3=tool_meets(L14,L23);
% lines and diagonal triangle of quadrangle q11q12q13q14
Lb12=B2134;
Lb34=B1243;
Lb13=B3124;
Lb24=B1342;
Lb14=B4123;
Lb23=B1432;
% lines and diagonal triangle of quadrangle q21q22q23q24
La12=B1234;
La34=B2143;
La13=B1324;
La24=B3142;
La14=B1423;
La23=B4132;

% syms x12 x34 x13 x24 x14 x23
% La12=[x13-x24;x23-x14;x14-x13+x23-x24];
% La34=[x24-x13;x23-x14;x14+x13+x23+x24];
% La13=[x34-x12;x12+x14+x23+x34;x23-x14];
% La24=[x12-x34;-x12+x14+x23-x34;x23-x14];
% La14=[x12+x13+x24+x34;x34-x12;x24-x13];
% La23=[x12-x13-x24+x34;x34-x12;-x24+x13];
 da1=tool_meet(La12,La34);
 da2=tool_meet(La13,La24);
 da3=tool_meet(La14,La23);

% Lb12=[x13+x24;-x23-x14;x14-x13-x23+x24];
% Lb34=[x13+x24;x23+x14;-x14-x13+x23+x24];
% Lb13=[x34+x12;-x12-x14+x23+x34;x23+x14];
% Lb24=[x34+x12;-x12+x14-x23+x34;-x23-x14];
% Lb14=[-x12-x13+x24+x34;x34+x12;x24+x13];
% Lb23=[x12-x13+x24-x34;-x34-x12;x24+x13];
 db1=tool_meet(Lb12,Lb34);
 db2=tool_meet(Lb13,Lb24);
 db3=tool_meet(Lb14,Lb23);

    

