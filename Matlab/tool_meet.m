% This is a meet tool that calls the meets tool which is essentially the
% cross product
function x=tool_meet(A1,A2,A3,A4)
I=eye(3);
I1=A1.'*I*A1;
I2=A2.'*I*A2;
if I1==0 || I2==0
     x=[0 0 0];
    display('empty input')
    return
end
% Works out the number of arguements
if nargin <3
    x=tool_simplex(tool_meets(A1,A2));
% Two arguements
elseif nargin <4
    I3=A3.'*I*A3;
    if I3==0
         x=[0 0 0];
        display('empty input')
        return
    end
    a=tool_simplex(tool_meets(A1,A2));
    if tool_incident(a,A3)
        x=a;
    else
        x=[0 0 0];
        display('empty meet')
        return
    end
% Three arguements, makes sure all are incident with the meet
else nargin < 5;
    I4=A4.'*I*A4;
    if I4==0
         x=[0 0 0];
        display('empty input')
        return
    end
    a=tool_simplex(tool_meets(A1,A2));
    if tool_incident(a,A3) && tool_incident(a,A4)
        x=a;
    else
        x=[0 0 0];
        display('empty meet')
        return
    end
 % four arguements, makes sure each is incident with the meet
end
end