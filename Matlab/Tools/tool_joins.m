% Uses the meet tool to work out the join. This is possible since points
% and lines are row and column vectors respectfully
% for actual valued vectors not symmbolic ones
function a=tool_joins(a1,a2)
a=tool_meets(a1.',a2.').';
end