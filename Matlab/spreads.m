function x=spreads(L1,L2,A)
x=1-dot(L1,L2,A)^2/(dot(L1,L1,A)*dot(L2,L2,A));