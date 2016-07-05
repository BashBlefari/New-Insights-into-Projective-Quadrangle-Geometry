% % Circumlines
% % replacing xij for \sigma_ij in the equations
% % for the circumlines allows easier computation of 
% % joins and meets.
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
% %meets of Circumlines
% C1132=meetx(C11,C32);C2142=meetx(C21,C42);C1334=meetx(C13,C34);C2344=meetx(C23,C44);
% C1123=meetx(C11,C23);C1224=meetx(C12,C24);C3143=meetx(C31,C43);C3244=meetx(C32,C44);
% L1234_1324=joinqx(C1123,C1224,C3143,C3244);
% L1243_1423=joinqx(meetx(C11,C24),meetx(C12,C23),meetx(C41,C34),meetx(C42,C33));
% L2134_4132=joinqx(meetx(C13,C22),meetx(C14,C21),meetx(C43,C32),meetx(C44,C31));
% L2143_3142=joinqx(meetx(C13,C21),meetx(C14,C22),meetx(C41,C33),meetx(C42,C34));
% L1324_1234=joinqx(C1132,C2142,C1334,C2344);
% L1342_1432=joinqx(meetx(C11,C34),meetx(C13,C32),meetx(C41,C24),meetx(C43,C22));
% L3142_2143=joinqx(meetx(C12,C31),meetx(C14,C33),meetx(C41,C22),meetx(C43,C24));
% L3124_4123=joinqx(meetx(C12,C33),meetx(C14,C31),meetx(C42,C23),meetx(C44,C21));
% L1423_1243=joinqx(meetx(C11,C42),meetx(C14,C43),meetx(C21,C32),meetx(C24,C33));
% L1432_1342=joinqx(meetx(C11,C43),meetx(C14,C42),meetx(C23,C31),meetx(C22,C34));
% L4132_2134=joinqx(meetx(C12,C41),meetx(C13,C44),meetx(C22,C31),meetx(C23,C34));
% L4123_3124=joinqx(meetx(C12,C44),meetx(C13,C41),meetx(C24,C32),meetx(C21,C33));





