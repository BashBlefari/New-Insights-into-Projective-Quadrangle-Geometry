% Quadrance(s) is for actual values, not just symmbolic ones
function x=tool_quadrances(a1,a2,A)
x=1-tool_dot(a1,a2,A)^2/(tool_dot(a1,a1,A)*tool_dot(a2,a2,A));
end