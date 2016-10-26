% The Diagonal triangles are pairwise perspective, the points of perspectivity are collinear
% and they share the same desargue line.
% Perspectivity of the quadrangle centroid diagonal triangles
p3=tool_meet(tool_join(da1,db1),tool_join(da2,db2),tool_join(da3,db3));
p1=tool_meet(tool_join(d1,da1),tool_join(d2,da2),tool_join(d3,da3));
p2=tool_meet(tool_join(d1,db1),tool_join(d2,db2),tool_join(d3,db3));
L=tool_join(p1,p2,p3);

pl3=tool_meet(tool_join(d1,d2),tool_join(da1,da2),tool_join(db1,db2));
pl2=tool_meet(tool_join(d1,d3),tool_join(da1,da3),tool_join(db1,db3));
pl1=tool_meet(tool_join(d2,d3),tool_join(da2,da3),tool_join(db2,db3));
DL=tool_join(pl1,pl2,pl3); 

% The diagonal points are also collinear in threes on six lines
CL123=tool_join(d1,da2,db3);
CL132=tool_join(d1,da3,db2);
CL213=tool_join(d2,da1,db3);
CL231=tool_join(d2,da3,db1);
CL312=tool_join(d3,da1,db2);
CL321=tool_join(d3,da2,db1);