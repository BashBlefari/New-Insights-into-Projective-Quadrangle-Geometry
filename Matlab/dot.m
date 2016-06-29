function a=dot(a1,a2,A)
b1=size(a1);
b2=size(a2);
a=0;
if b1(1,1)==1 & b2(1,1)==1
    x=factor(a1*A*a2.');
    a=1;
    for i=1:length(x)
        a=a*x(1,i);
    end
elseif b1(1,2)==1 & b2(1,2)==1
    B=det(A)*inv(A);
    a=simplify(a1.'*B*a2);
end