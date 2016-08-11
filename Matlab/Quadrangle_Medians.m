% This is to work out the quadrangle centroids, run the Subtriangle_Centroids.m file
% work out the subtriangle centroid to opposite quadrangle point lines
% (cpl) or medians
cpl41=tool_join(a4,g41);cpl31=tool_join(a3,g31);cpl21=tool_join(a2,g21);cpl11=tool_join(a1,g11);
cpl42=tool_join(a4,g42);cpl32=tool_join(a3,g32);cpl22=tool_join(a2,g22);cpl12=tool_join(a1,g12);
cpl43=tool_join(a4,g43);cpl33=tool_join(a3,g33);cpl23=tool_join(a2,g23);cpl13=tool_join(a1,g13);
cpl44=tool_join(a4,g44);cpl34=tool_join(a3,g34);cpl24=tool_join(a2,g24);cpl14=tool_join(a1,g14);
q1=tool_meet(cpl41,cpl31,cpl21,cpl11);
q2=tool_meet(cpl42,cpl32,cpl22,cpl12);
q3=tool_meet(cpl43,cpl33,cpl23,cpl13);
q4=tool_meet(cpl44,cpl34,cpl24,cpl14);