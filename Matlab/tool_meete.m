% This is a meete tool that calls the meets tool which is essentially the
% cross product
% Which is the meet tool by for examples
function a=tool_meete(A1,A2,A3,A4)
% Works out the number of arguements
if nargin <3
    x=(tool_meets(A1,A2));
% Two arguements
elseif nargin <4
    x=(tool_meets(A1,A2));
    I=tool_incidente(x,A3);
    if I
    else
        a=[0 0 0];
        display('no')
        return
    end
% Three arguements, makes sure all are incident with the meet
else nargin < 5
    x=(tool_meets(A1,A2));
    I1=tool_incidente(x,A3);I2=tool_incidente(x,A4);
    if I1 && I2
    else
        a=[0 0 0];
        display('no')
        return
    end
 % four arguements, makes sure each is incident with the meet
end
a=x;
end