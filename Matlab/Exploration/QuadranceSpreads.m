% points of quadrangle
a1=[1 0 0];a2=[0 1 0];a3=[0 0 1];a4=[1 1 1];

%quadrances
q12=quadrance(a1,a2,A);q13=quadrance(a1,a3,A);q14=quadrance(a1,a4,A);
q23=quadrance(a3,a2,A);q24=quadrance(a2,a4,A);q34=quadrance(a4,a3,A);

%lines of quadrangle
L12=sjoin(a1,a2);L23=sjoin(a2,a3);L13=sjoin(a1,a3);
L14=sjoin(a1,a4);L24=sjoin(a2,a4);L34=sjoin(a3,a4);

%spreads
S1213=spread(L12,L13,A);S1314=spread(L14,L13,A);S1214=spread(L12,L14,A);
S1223=spread(L12,L23,A);S1224=spread(L12,L24,A);S2324=spread(L23,L24,A);
S1323=spread(L13,L23,A);S1334=spread(L13,L34,A);S2334=spread(L23,L34,A);
S1424=spread(L14,L24,A);S1434=spread(L14,L34,A);S2434=spread(L24,L34,A);