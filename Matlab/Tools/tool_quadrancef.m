% Quadrance(f) works out quadrance for finite fields
function x=tool_quadrancef(a1,a2,A)
x=1-tool_dote(a1,a2,A)^2*tool_finverse(tool_dote(a1,a1,A),7)*tool_finverse(tool_dote(a2,a2,A),7);
end