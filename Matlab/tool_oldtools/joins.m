function a=joins(a1,a2)
a=[a1(1,2)*a2(1,3)-a1(1,3)*a2(1,2);
    a1(1,3)*a2(1,1)-a1(1,1)*a2(1,3);
    a1(1,1)*a2(1,2)-a1(1,2)*a2(1,1)];
end