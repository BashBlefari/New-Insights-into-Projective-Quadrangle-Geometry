% This is a meet tool that calls the meets tool which is essentially the
% cross product
function a=tool_meet(a1,a2,a3,a4)
% Works out the number of arguements
if nargin <3
    a=tool_simplex(tool_meets(a1,a2));
% Two arguements
elseif nargin <4
    a=tool_simplex(tool_meets(a1,a2));
    if tool_incident(a,a3)
        x=a;
    else
        x=[0 0 0];
        display('no')
        return
    end
% Three arguements, makes sure all are incident with the meet
else nargin < 5
    a=tool_simplex(tool_meets(a1,a2));
    if tool_incident(a,a3)&& tool_incident(a,a4)
        x=a;
    else
        x=[0 0 0];
        display('no')
        return
    end
 % four arguements, makes sure each is incident with the meet
end