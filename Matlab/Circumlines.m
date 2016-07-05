% Circumlines
% replacing xij for \sigma_ij in the equations
% for the circumlines allows easier computation of 
% joins and meets.
syms x12 x34 x13 x24 x14 x23
C41=[x12-x13;-x12+x23;x13+x23];
C42=[x12+x13;-x12-x23;-x13-x23];
C43=[-x12-x13;x12-x23;x13-x23];
C44=[-x12+x13;x12+x23;-x13+x23];

C31=[x12-x24;-x12+x14;-x14-x24];
C32=[x12+x24;-x12-x14;x14+x24];
C33=[x12+x24;-x12+x14;-x14+x24];
C34=[x12-x24;-x12-x14;x14-x24];

C21=[-x13+x34;-x14+x34;x13+x14];
C22=[x13+x34;x14+x34;-x13-x14];
C23=[-x13-x34;x14-x34;x13-x14];
C24=[x13-x34;-x14-x34;-x13+x14];

C11=[-x24+x34;-x23+x34;-x23-x24];
C12=[x24+x34;x23+x34;x23+x24];
C13=[-x24-x34;x23-x34;x23-x24];
C14=[x24-x34;-x23-x34;-x23+x24];