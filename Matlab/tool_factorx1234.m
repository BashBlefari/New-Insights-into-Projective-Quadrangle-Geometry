function X=tool_factorx1234(A)
% n=size(A);
% syms y
% X=ones(n(1),n(2))*y;
% a=0;
% if n(1)==n(2)
%     n=size(factor(A));
%     a=1;
% else
%     y1=size(factor(A(1)));
%     n1=y1(2);
%     y2=size(factor(A(2)));
%     n2=y2(2);
%     y3=size(factor(A(3)));
%     n3=y3(2);
% end
syms x12 x34 x13 x24 x14 x23
B=A;
B=subs(B,x12*x34,x13*x24);
B=(subs(B,x13*x24,x14*x23));
B=(subs(B,x14*x23,x12*x34));
X=simplify(B);
% if a
%     m=size(factor(B));
%     if m(2)<n;
%         X=A;
%     else
%         X=B;
%     end
% else
%     y1=size(factor(B(1)));
%     m1=y1(2);
%     if m1<n1
%         X(1)=X(1)*0+A(1);
%     else
%         X(1)=X(1)*0+B(1);
%     end
%     y2=size(factor(B(2)));
%     m2=y2(2);
%     if m2<n2
%         X(2)=X(2)*0+A(2);
%     else
%         X(2)=X(2)*0+B(2);
%     end
%     y3=size(factor(B(3)));
%     m3=y3(2);
%     if m3<n3
%         X(3)=X(3)*0+A(3);
%     else
%         X(3)=X(3)*0+B(3);
%     end
end

