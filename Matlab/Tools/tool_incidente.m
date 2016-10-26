% incident tool for examples
function I=tool_incidente(a,L)
I=0;
X=a*L;
if X<10^-14
    I=1;
end
end