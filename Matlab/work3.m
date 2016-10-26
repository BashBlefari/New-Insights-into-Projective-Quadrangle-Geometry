A=[1 0 0;0 1 0;0 0 1];
for i=0:6
    for j=0:6
        x=[i j 1];
        for m=i:6
            for n=j:6
                y=[m n 1];
                if mod(tool_quadrancee(x,y,A),7)>0
                mod(1-tool_quadrancef(x,y,A),7)
                end
            end
        end
    end
end