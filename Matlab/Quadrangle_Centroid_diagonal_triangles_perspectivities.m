% Perspectivity of the quadrangle centroid diagonal triangles
p3=tool_meet(tool_join(da1,db1),tool_join(da2,db2),tool_join(da3,db3));
p1=tool_meet(tool_join(d1,da1),tool_join(d2,da2),tool_join(d3,da3));
p2=tool_meet(tool_join(d1,db1),tool_join(d2,db2),tool_join(d3,db3));
L=tool_join(p1,p2,p3);

pl3=tool_meet(tool_joins(d1,d2),tool_join(da1,da2),tool_join(db1,db2));
pl2=tool_meet(tool_joins(d1,d3),tool_join(da1,da3),tool_join(db1,db3));
pl1=tool_meet(tool_joins(d2,d3),tool_join(da2,da3),tool_join(db2,db3));
DL=tool_join(pl1,pl2,pl3); 