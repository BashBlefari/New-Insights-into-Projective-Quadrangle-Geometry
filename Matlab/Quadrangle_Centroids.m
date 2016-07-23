% Simplification of the bimeadian lines so that calculations are simplified
% standard replacement is used 1/(A_1 A_2)=x12^2.
% this simplification only works for the standard coordinates of
% a1=[1 1 1] a2=[-1 -1 1] a3=[1 -1 1] a4=[-1 1 1]
syms x12 x34 x13 x24 x14 x23
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
% Quadrangle Centroids
q11=tool_meet(B1234,B1324,B1423);
q12=tool_meet(B1234,B3142,B4132);
q13=tool_meet(B2143,B1324,B4132);
q14=tool_meet(B2143,B3142,B1423);
q21=tool_meet(B2134,B3124,B4123);
q22=tool_meet(B2134,B1342,B1432);
q23=tool_meet(B1243,B1342,B4123);
q24=tool_meet(B1243,B3124,B1432);