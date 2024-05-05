
%Miles Levine
%Section 0412
%Matlab Project 4

%% Problem 1
format short;
%%a
A = [2 0 1 0; 1 5 1 3; 0 2 -3 5; 1 2 1 0]

%%b
[P D] = eig(A)

%%c
disp("Matrix A is diagonalizable because there exists 4 e' values");
disp(" and they correspond to the 4 columms that matrix A has");
%% Problem 2
format rat
%%a
syms x;
F = 2*x^3 - 4*x^2 + x - 2

G = x^5 - 3*x + 1
inner_product = int(F * G,x,0,1)

%%b
disp("both functions are not orthogonal since the inner product is 1.");
disp("for both functions to be orthogonal, inner product must equal 0");
%%c
H1 = (x-1)^2
H2 = (.25-x)
innerProduct = int(H1 * H2,x,0,1)

%% Problem 3
format short;
%%a
u1 = [2;3;-3;-6]
u2 = [6; -1; 4; 1]
u3 = [0;5;-3;6]
u4 = [-4; 5; -2; 4]

%%b
A = [u1, u2, u3, u4]
%%c
v1 = u1
v2 = u2 - dot(u2,v1)/dot(v1,v1)*v1
v3 = u3 - dot(u3,v1)/dot(v1,v1)*v1 - dot(u3,v2)/dot(v2,v2)*v2
Gs_v3 = dot(u4,v3)/dot(v3,v3)*v3;
v4 = u4 - dot(u4,v1)/dot(v1,v1)*v1 - dot(u4,v2)/dot(v2,v2)*v2 - Gs_v3


%%d
w1 = v1/norm(v1)
w2 = v2/norm(v2)
w3 = v3/norm(v3)
w4 = v4/norm(v4)
%%e
Q = [w1, w2, w3, w4]
%%f
R = Q' * A
disp("R is a triangle matrix therefor A = QR");
%%g
[Q1,R1] = qr(A,0)
%% Problem 4
format rat;
%%a
A = [3 6 -7; 4 -4 1; 7 -6 3]

%%b
v1 = [3;4;-3]
v2 = [-1;1;0]
v3 = [2;6;-1]
Pb = [v1,v2,v3]
%%c
%inverse of A*v1,  A*v2,  A*v3 
C = [Pb\(A*v1), Pb\(A*v2), Pb\(A*v3)]


%%d

v = [17;17;17] %is in the b coordinate
disp("C*v =");
disp(C*v);
%%e
disp("u1 represents the linear combination vector");
u1 = Pb*(C*v)
disp("u2 represents the mapped vector");
u2 = A*(Pb*v)
disp("Both vectors are the same");
%% Problem 5
format rat;
x1 = [5;-2;1;-5;0]; 
x2 = [-3;1;6;4;2];
x3 = [-6;1;0;4;2];
S1 = [x1, x2, x3]
y1 = [2;3;-4;3;1];
y2 = [-14;-8;10;-8;-8];
y3 = [-3;2;-3;2;-2];
S2 = [y1,y2,y3]
%%a
rref_S1 = rref(S1)
rref_S2 = rref(S2)

disp("pivit in every column shows that S1 is linearly independent");
disp("S2 is linearly dependent ");
%%b
u1 = x1;
u2 = x2;
u3 = x3;
%%c
v1 = u1
v2 = u2-dot(u2,v1)/dot(v1,v1)*v1
v3 = u3-dot(u3,v1)/dot(v1,v1)*v1-dot(u3,v2)/dot(v2,v2)*v2
%%d
y = [7;-9;0;3;2]
%%e
% use Gram Schmidt
Gs_v1 = dot(y,v1)/dot(v1,v1)*v1;
Gs_v2 = dot(y,v2)/dot(v2,v2)*v2;
Gs_v3 = dot(y,v3)/dot(v3,v3)*v3;
z1 = Gs_v1 + Gs_v2 + Gs_v3
z2 = y - z1
%%f
disp("z1 would be the closest point in W that is");
disp("closest to y since it is LLS" );
disp(z1);







