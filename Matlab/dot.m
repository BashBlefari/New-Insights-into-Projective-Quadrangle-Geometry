function a=dot(a1,a2,A)
b1=size(a1);
b2=size(a2);
a=0;
if b1(1,1)==1 & b2(1,1)==1
    a=a1*A*a2.';
elseif b1(1,2)==1 & b2(1,2)==1
    B=det(A)*inv(A);
    a=a1.'*B*a2;
end