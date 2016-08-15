% Ortholinear coordinates, standard triangle and standard triangle bilinear
% form
syms a b c

% points of standard triangle 
t1=[1 0 0];t2=[0 1 0];t3=[0 0 1];

% lines of the standard triangle
T1=tool_joins(t2,t3);
T2=tool_joins(t1,t3);
T3=tool_joins(t1,t2);


% Bilinear form; D for lines and C for points
D=[a 1 1;1 b 1;1 1 c];
C=-det(D)*inv(D);