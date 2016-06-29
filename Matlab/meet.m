function a=meet(a1,a2)
a=simplify(smeet(a1,a2));
%[C,x1,x2,x3,y]=common(x);
%for i=1:3
%    x1=expand(x(i));x2=factor(x1);x4=size(x2);x3=1;
%    for j=1:x4(2)
%        x3=x3*x2(1,j);
%    end
%    a(1,i)=x3;
%end