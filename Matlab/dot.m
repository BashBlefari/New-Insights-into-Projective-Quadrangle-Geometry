function a=dot(a1,a2,A)
b1=size(a1);
b2=size(a2);
a=0;
if b1(1,1)==1 && b2(1,1)==1
    a=sdot(a1,a2);
elseif b1(1,2)==1 && b2(1,2)==1
    A1=dual(a1,A);A2=dual(a2,A);
    a=sdot(A1,A2,A);
end