syms x y z
        a=[x y z];
        a=a*A*a.';
        a=mod(expand(a),7);
for i=0:6
        b=subs(a,[x,y,z],[i,1,0]);
        c=mod(b,7);
        if c==0
           display([i 1 0])
        end
end
for i=0:6
    for j=0:6
        b=subs(a,[x,y,z],[i,j,1]);
        c=mod(b,7);
        if c==0
           display([i j 1])
        end
    end
end
            