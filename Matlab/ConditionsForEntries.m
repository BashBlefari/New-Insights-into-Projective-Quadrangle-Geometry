% these are the conditions for midpoints
% 1/cond12 = p12^2, etc...
%From these we get things like dot1+dot2-dot3-dot4=8f
% p12=p, p13=q, p14=r, p23=s, p24=t, p34=u
% Also let dot1=A1, etc... since each can be written in a few different
% ways
syms p q r s t u;
A1=[s/(p*q); t/(p*r); u/(q*r)];
A2=[q/(p*s); r/(p*t); u/(s*t)];
A3=[p/(q*s); r/(q*u); t/(s*u)];
A4=[p/(r*t); q/(r*u); s/(t*u)];

% for f
S12=summ(A1,A2); S34=summ(A3,A4);