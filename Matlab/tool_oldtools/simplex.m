function x=simplex(a)
a1=factor(a(1));a2=factor(a(2));a3=factor(a(3));
if length(a1)==1&&length(a2)==1&&length(a3)==1
    if a1==0&&a2==0&&a3==0
        x=a;
        return
    end
end
if a1~=0
    I=common(a1,a2);
    I=common(I,a3);
elseif a2~=0
    I=common(a2,a3);
else
    x=a/a(3);
end
x=expand(a);
for i=1:length(I)
       if I(i)~=0
          x=simplify(x/I(i));
       end
end
end

                