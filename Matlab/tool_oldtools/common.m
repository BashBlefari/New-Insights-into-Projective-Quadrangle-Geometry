function I=common(x1,x2)
I1=x1;
I2=x2;
syms y;
n1=length(I1);n2=length(I2);
n=max(n1,n2);I=ones(1,n)*y;
k=0;
for i=1:n1
    for j=1:n2
        if abs(I1(i))==abs(I2(j))
            if notin(I1(i),I)
                k=k+1;
                I(k)=I(k)*0+I1(i);
            end
        end
    end
end
for i=k+1:n
    I(i)=I(i)*0;
end
end