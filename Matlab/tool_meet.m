% This is a meet tool that calls the meets tool which is essentially the
% cross product
function x=tool_meet(A1,A2,A3,A4)
% Works out the number of arguements
if nargin <3
    x=tool_simplex(tool_meets(A1,A2));
% Two arguements
elseif nargin <4
    a=tool_simplex(tool_meets(A1,A2));
    if tool_incident(a,A3)
        x=a;
    else
        x=[0 0 0];
        display('empty')
        return
    end
% Three arguements, makes sure all are incident with the meet
else nargin < 5;
    a=tool_simplex(tool_meets(A1,A2));
    if tool_incident(a,A3) && tool_incident(a,A4)
        x=a;
    else
        x=[0 0 0];
        display('empty')
        return
    end
 % four arguements, makes sure each is incident with the meet
end
end