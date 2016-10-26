function x=tool_simplex(a)
% expand the entries of a into there factors
a1=factor((a(1)));
a2=factor((a(2)));
a3=factor((a(3)));
%checks for an empty point
if length(a1)==1 && length(a2)==1 && length(a3)==1
    if a1==0&&a2==0&&a3==0
        x=a;
        display('empty input')
        return
    end
end
% checks first entry being nonzero and works out common factors
if a1~=0
    I=tool_common(a1,a2);
    I=tool_common(I,a3);
% checks second entry is nonzero and works out common factors
elseif a2~=0
    I=tool_common(a2,a3);
% a is nonempty and so has one entry
else
    x=a/a(3);
    return
end
x=expand(a);
% removes common factors
for i=1:length(I)
       if I(i)~=0
          x=simplify(x/I(i));
       end
end
x=simplify(x);
end

                