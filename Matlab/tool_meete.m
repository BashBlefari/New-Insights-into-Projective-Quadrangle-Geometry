% This is a meete tool that calls the meets tool which is essentially the
% cross product
% Which is the meet tool by for examples
function a=tool_meete(a1,a2,a3,a4)
% Works out the number of arguements
if nargin <3
    x=(tool_meets(a1,a2));
% Two arguements
elseif nargin <4
    x=(tool_meets(a1,a2));
    I=(x*a3);
    if I==0
    else
        a=[0 0 0];
        display('no')
        return
    end
% Three arguements, makes sure all are incident with the meet
else nargin < 5
    x=(tool_meets(a1,a2));
    I1=(x*a3);I2=(x*a4);
    if I1 == 0 && I2 == 0
    else
        a=[0 0 0];
        display('no')
        return
    end
 % four arguements, makes sure each is incident with the meet
end
a=x;
end