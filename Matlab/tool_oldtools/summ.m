function M=summ(A1,A2)
x=length(A1);x1=x(1); x=length(A2);x2=x(1);
syms y;
M=ones(x1*x2,1)*y;
m=1;
for i=1:x1
    for j=1:x2
        M(m)=simplify(A1(i)+A2(j));
        m=m+1;
    end
end
