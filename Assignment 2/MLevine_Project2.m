%Miles Levine
%Section 0412
%Matlab Project 2

%% Problem 1
%%a
format short;
x = pi/6;
A = [cos(x), -sin(x); sin(x), cos(x)];
disp("matrix A:");
disp(A);
A = [cos(x), -sin(x); sin(x), cos(x)];
disp("Multiply column 1 by 2, and colum 2 by 5.");
A(:,1) = 2*A(:,1);
A(:,2) = 5*A(:,2);
disp("matrix A scaled:");
disp(A);
%%b
disp("matrix B:");
B = [1, 0; 0, 1];
disp(B);
disp("scale y by factor of 7");
B(:,2) = 7*B(:,2);
disp(B);
disp("Multiply column 1 by 2, and colum 2 by 5.");
B(:,1) = 2*B(:,1);
B(:,2) = 5*B(:,2);
disp(B);
%%c
C = A*B;
D = B*A;
disp("A multiplied by B");
disp(C);
disp("B multiplied by A");
disp(D);
%%d
disp("When applying multiple transformations to a point, the commutative");
disp("property states that the final result can be different depending on ");
disp("the order in which you apply the transformations");
disp(" ");

%% Problem 2
disp("Problem 2");
%%a
format rat;
A = [1, 2, -1; 2, 1, 2; -3, 2, 1];
disp("coefficient matrix A:");
disp(A);
disp("inverse of A:");
inverseA = inv(A);
disp(inverseA);
%%b
disp("matrix B is the right hand side of the system of equation")
B = [13; 5; 6];
disp(B);
disp("Multipling B by the inverse of A yields the unique solution to the");
    disp(" system of equations: x1, x2, x3 ");
X = inverseA * B;
disp(X); 
%%c
disp("To find the inverse of matrix A, construct the augmented matrix"); 
disp(" with identity matrix size 3x3:");
X=[A eye(3)];
disp(X);
disp("rref of new augmented matrix X is:");
Y = rref(X);
disp(Y);
%%d
disp("now we extract the last 3 columns of the  6x6 matrix Y:");
inverseA = Y(:, 4:6);
disp(inverseA);

%% Problem 3
disp(" ");
disp("Problem 3");
format rat;
%%a
disp("Matrix A:")
A = [0 0 1 -1 0 1; -2 6 -1 1 4 3; 0 4 -1 1 2 1; -2 4 1 1 2 3; 2 -4 0 0 -2 -2; 0 2 -1 1 2 -1];
disp(A);
%%b
disp("determinant of A:");
detA = det(A);
disp(detA);
disp("To get the determinant of A inverse, you need to reciprocate the");
disp(" determinant of A to get 1/det(A).");
disp("So the determinant of A inverse = 1/det(A)");
detAInverse = 1/detA;
disp(" ");
%%d

disp("The det((A)^-2)(B^2)) is equal to (det(A)^-2) * (det(B)^2)");
disp("You can rewrite it to be (det(B)^2)/(det(A)^2)");
disp("The det(A^Z) is equal to the det(A) raised to Z in ");
disp("which Z is any integer");


%% Problem 4
disp(" ");
disp("Problem 4:");
%%a 
A = [1, 4, 5; 2, 5, 6; 5, 7, 5];
B = [-3, -6, 9; 3, -5, 3; 4, 6, 3];
disp("A:")
disp(A);
disp("B:")
disp(B);
X = (A*B)^2;
Y = (A^2)*(B^2);
disp("(AB)^2:")
disp(X);
disp("(A^2)*(B^2):")
disp(Y);
%%b
C = [1, 1, 1; 1, 1, 1; 1, 1, 1];
D = [2, 2, 2; 2, 2, 2; 2, 2, 2];
disp("C:");
disp(C);
disp("D:");
disp(D);

X = (C*D)^2;
Y = (C^2)*(D^2);

disp("(CD)^2:")
disp(X);
disp("(C^2)*(D^2):")
disp(Y);
%%c
disp("Yes, it is possible that A and B are both invertable although A+B");
disp("may not be invertable");
disp("matrix A:");
A = [-3 5; -6 2];
disp(A);
disp("matrix B");
B = [3 -4; 6, 7];
disp(B);
disp("The det(A) = ");
P = det(A);
disp(P);
disp("The det(B) = ");
X = det(B);
disp(X);
disp("A+B = new matrix C");
C = A+B;
disp(C);
disp("The det(C) = ");
detC = det(C);
disp(detC);
disp("This proves that A and B are both invertable but A+B isnt.");
disp("Since the determinants of A and B are not equal to zero, they can ");
disp("be inverted, but in this case the determinant of A+B does equal 0 ");
disp("so A+B cannot be inverted.");
%% Problem 5
disp(" ");
disp("Problem 5");
format rat;
%%a
syms x;
A = [2*x, x+2, x; -x-1, x, 3*x; -2*x, x+1, -x];
disp(A);
%%b
detA = det(A);
x = solve(detA == 0,x);
disp(x);
%%c
disp("The values x would be the same as part b because when we solve ");
disp("for det(A)^k = 0 versus det(A) = 0 the multiplicities of the roots ");
disp("changed values but the actual values of the root did not.");
disp("x values for wich A^k does not have an inverse:");
disp(x);








