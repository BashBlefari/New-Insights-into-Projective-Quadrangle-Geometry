function x=quadrances(a1,a2,A)
x=1-dot(a1,a2,A)^2/(dot(a1,a1,A)*dot(a2,a2,A));
end