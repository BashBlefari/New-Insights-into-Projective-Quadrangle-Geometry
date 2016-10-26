% Ortholinear coordinates, standard triangle and standard triangle bilinear
% form
syms d f g x

% points of standard triangle 
t1=[-1 1 1];t2=[1 -1 1];t3=[1 1 -1];

% lines of the standard triangle
% T1=tool_joins(t2,t3);
% T2=tool_joins(t1,t3);
% T3=tool_joins(t1,t2);


% Bilinear form; D for lines and C for points
D=[x d f;d x g;f g x];
C=det(D)*inv(D);

% Dual triangle
T1=tool_dual(t1,C);
T2=tool_dual(t2,C);
T3=tool_dual(t3,C);