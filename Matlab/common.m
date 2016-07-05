function I=common(x1,x2)
I1=x1;I2=x2;
n1=length(I1);n2=length(I2);
n=max(n1,n2);I=x1;
k=0;
for i=1:length(I1)
    for j=1:length(I2)
        if I1(i)==I2(j)
            if notin(I1(i),I)
                k=k+1;
                I(k)=I(k)*0+I1(i)
            end
        end
    end
end