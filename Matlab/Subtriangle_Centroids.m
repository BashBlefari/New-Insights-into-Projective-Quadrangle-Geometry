% Centoids
% subtriangle 4
g44=tool_meet(D423,D413,D412);
g43=tool_meet(D432,D431,D412);
g42=tool_meet(D432,D413,D421);
g41=tool_meet(D423,D431,D421);
%subtriangle 3
g33=tool_meet(D312,D324,D314);
g34=tool_meet(D312,D342,D341);
g31=tool_meet(D321,D324,D341);
g32=tool_meet(D321,D342,D314);
% subtriangle 2
g22=tool_meet(D214,D213,D234);
g21=tool_meet(D241,D231,D234);
g24=tool_meet(D241,D213,D243);
g23=tool_meet(D214,D231,D243);
% subtriangle 1
g11=tool_meet(D134,D124,D123);
g12=tool_meet(D134,D142,D132);
g13=tool_meet(D143,D124,D132);
g14=tool_meet(D143,D142,D123);
