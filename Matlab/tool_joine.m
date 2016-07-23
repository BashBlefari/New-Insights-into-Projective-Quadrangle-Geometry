% Uses the meet tool to work out the join. This is possible since points
% and lines are row and column vectors respectfully
% for example
function a=tool_joine(a1,a2,a3,a4)
if nargin < 3
    a=tool_meete(a1.',a2.').';
elseif nargin < 4
    a=tool_meete(a1.',a2.',a3.').';
elseif nargin < 5
    a=tool_meete(a1.',a2.',a3.',a4.').';
end
end