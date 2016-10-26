% Circumlines
% replacing xij for \sigma_ij in the equations
% for the circumlines allows easier computation of 
% joins and meets.
% syms x12 x34 x13 x24 x14 x23
C44=[x12-x13;-x12+x23;x13+x23];
C43=[x12+x13;-x12-x23;-x13-x23];
C42=[-x12-x13;x12-x23;x13-x23];
C41=[-x12+x13;x12+x23;-x13+x23];

C33=[x12-x24;-x12+x14;-x14-x24];
C34=[x12+x24;-x12-x14;x14+x24];
C31=[x12+x24;-x12+x14;-x14+x24];
C32=[x12-x24;-x12-x14;x14-x24];

C22=[-x13+x34;-x14+x34;x13+x14];
C21=[x13+x34;x14+x34;-x13-x14];
C24=[-x13-x34;x14-x34;x13-x14];
C23=[x13-x34;-x14-x34;-x13+x14];

C11=[-x24+x34;-x23+x34;-x23-x24];
C12=[x24+x34;x23+x34;x23+x24];
C13=[-x24-x34;x23-x34;x23-x24];
C14=[x24-x34;-x23-x34;-x23+x24];
%meets of Circumlines
L1124_3342=tool_join(tool_meet(C11,C24),tool_meet(C33,C42),tool_meet(C12,C23),tool_meet(C34,C41));
L1123_4432=tool_join(tool_meet(C11,C23),tool_meet(C44,C32),tool_meet(C12,C24),tool_meet(C43,C31));
L2214_3341=tool_join(tool_meet(C14,C22),tool_meet(C41,C33),tool_meet(C13,C21),tool_meet(C42,C34));
L2213_4431=tool_join(tool_meet(C13,C22),tool_meet(C44,C31),tool_meet(C14,C21),tool_meet(C43,C32));
L1134_2243=tool_join(tool_meet(C11,C34),tool_meet(C22,C43),tool_meet(C13,C32),tool_meet(C24,C41));
L1132_4423=tool_join(tool_meet(C11,C32),tool_meet(C44,C23),tool_meet(C13,C34),tool_meet(C42,C21));
L3312_4421=tool_join(tool_meet(C12,C33),tool_meet(C44,C21),tool_meet(C14,C31),tool_meet(C42,C23));
L2241_3314=tool_join(tool_meet(C14,C33),tool_meet(C41,C22),tool_meet(C12,C31),tool_meet(C43,C24));
L1143_2234=tool_join(tool_meet(C11,C43),tool_meet(C22,C34),tool_meet(C14,C42),tool_meet(C23,C31));
L1142_3324=tool_join(tool_meet(C11,C42),tool_meet(C24,C33),tool_meet(C14,C43),tool_meet(C21,C32));
L3321_4412=tool_join(tool_meet(C12,C44),tool_meet(C21,C33),tool_meet(C13,C41),tool_meet(C24,C32));
L2231_4413=tool_join(tool_meet(C13,C44),tool_meet(C22,C31),tool_meet(C23,C34),tool_meet(C12,C41));
