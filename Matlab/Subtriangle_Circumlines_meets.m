% Circumlines
% replacing xij for \sigma_ij in the equations
% for the circumlines allows easier computation of 
% joins and meets.
% syms x12 x34 x13 x24 x14 x23
% C41=[x12-x13;-x12+x23;x13+x23];
% C42=[x12+x13;-x12-x23;-x13-x23];
% C43=[-x12-x13;x12-x23;x13-x23];
% C44=[-x12+x13;x12+x23;-x13+x23];
% 
% C31=[x12-x24;-x12+x14;-x14-x24];
% C32=[x12+x24;-x12-x14;x14+x24];
% C33=[x12+x24;-x12+x14;-x14+x24];
% C34=[x12-x24;-x12-x14;x14-x24];
% 
% C21=[-x13+x34;-x14+x34;x13+x14];
% C22=[x13+x34;x14+x34;-x13-x14];
% C23=[-x13-x34;x14-x34;x13-x14];
% C24=[x13-x34;-x14-x34;-x13+x14];
% 
% C11=[-x24+x34;-x23+x34;-x23-x24];
% C12=[x24+x34;x23+x34;x23+x24];
% C13=[-x24-x34;x23-x34;x23-x24];
% C14=[x24-x34;-x23-x34;-x23+x24];
%meets of Circumlines
L1234_1324=tool_join(tool_meet(C11,C23),tool_meet(C12,C24),tool_meet(C31,C43),tool_meet(C32,C44));
L1243_1423=tool_join(tool_meet(C11,C24),tool_meet(C12,C23),tool_meet(C41,C34),tool_meet(C42,C33));
L2134_4132=tool_join(tool_meet(C13,C22),tool_meet(C14,C21),tool_meet(C43,C32),tool_meet(C44,C31));
L2143_3142=tool_join(tool_meet(C13,C21),tool_meet(C14,C22),tool_meet(C41,C33),tool_meet(C42,C34));
L1324_1234=tool_join(tool_meet(C11,C32),tool_meet(C21,C42),tool_meet(C13,C34),tool_meet(C23,C44));
L1342_1432=tool_join(tool_meet(C11,C34),tool_meet(C13,C32),tool_meet(C41,C24),tool_meet(C43,C22));
L3142_2143=tool_join(tool_meet(C12,C31),tool_meet(C14,C33),tool_meet(C41,C22),tool_meet(C43,C24));
L3124_4123=tool_join(tool_meet(C12,C33),tool_meet(C14,C31),tool_meet(C42,C23),tool_meet(C44,C21));
L1423_1243=tool_join(tool_meet(C11,C42),tool_meet(C14,C43),tool_meet(C21,C32),tool_meet(C24,C33));
L1432_1342=tool_join(tool_meet(C11,C43),tool_meet(C14,C42),tool_meet(C23,C31),tool_meet(C22,C34));
L4132_2134=tool_join(tool_meet(C12,C41),tool_meet(C13,C44),tool_meet(C22,C31),tool_meet(C23,C34));
L4123_3124=tool_join(tool_meet(C12,C44),tool_meet(C13,C41),tool_meet(C24,C32),tool_meet(C21,C33));
