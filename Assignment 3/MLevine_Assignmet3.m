
%Miles Levine
%Section 0412
%Matlab Project 3

%% Problem 1
%%a
format rat;
A=[3 -8 22 -8 2; 6 -8 -2 -8 44; -3 3 15 3 -27; -1 1 6 1 -9; 0 5 -7 5 25; 4 2 -3 2 66];
disp(A);
rrefA = rref(A);
disp(rrefA);
disp("The basis of a coloum space of matrix A are pivot columns of rrefA,");
disp("{[3; 6; -3; -1; 0; 4], [-8; -8; 3; 1; 5; 2], [22; -2; 15; 6; -7; -3]}");
disp("The basis of a kernel of A is the pivot vectors put into the ");
disp("parametric form:");

disp("Ker ={[14; 5; 0; 0], [0; -1; 0; 1]}");
%%b
disp("The solution to this system is x1 = 14. x2 = -x4 +5. x3 = 0, x4 ");
disp("is a free variable. There are infinite solutions since there");
disp("are more variables than non-zero rows. The parametric form discribes");
disp("that there can be infinite solutions because pluging in values for");
disp("the free variable will yield infinite solutions. ");
disp("parametric form:");
disp("x1 = 14"); 
disp("x2 = -x4 + 5");
disp("x3 = 0");
disp("x4, is free");
disp("[14; 5; 0; 0] + x4[0; -1; 0; 1] ");

%% Problem 2
format rat;
%%a correct?
A = [5 -3 6 7; 0 0 0 1; 7 -5 3 -7; 4 0 3 -7];
disp(A);
rrefA= rref(A);
disp(rrefA);
disp("Basis for Row space of A =")
fprintf("{[5 -3 6 7], [0 0 0 1], [ 7 -5 3 -7], [4 0 3 -7]}\n");
%%b
disp("Basis for column space of A = all colums of Matrix A, since every");
disp("column is a pivot:");
disp("{[5; 0; 7; 4;], [-3; 0; -5; 0], [6; 0; 3; 3], [7; 1; -7; -7]}");
%%c
disp("yes, dim(Row(A)) is equal the dim(Col(A)).");
disp("dim(Row(A)) = number of linearly independent rows which is 4.");
disp("dim(Col(A)) = number of linearly independent columns which is 4.");
%%d
disp("no, row(a) and col(a) are not equal sets. row(a) is the transpose ");
disp("of col(a) and in this case the transpose of the column space of A");
disp("is not equal to the row space of A");

%% Problem 3
format rat;
%%a 
%b times v 
B = [4 2 4 -8; 1 6 3 6; -5 4 0 7; 5 -7 1 7];
v = [2; -30; 13; -10];
u = (B*v);
disp(B);
disp(v);
disp("to map from non-canonical to canonical multiply B and v");

disp("u = ");
disp(u);


%%b take inverse of B then multiply by v
invB = inv(B);
disp("inverse of B =");
w = (B\v); %
disp(invB);
disp("to map from canonical to non-canonical take inverse of B, then ");
disp("multiply by v");
disp("w =")
disp(w);



%% Problem 4
format rat;
%%a

v1 = [7; -3; 1; 7; 2];
v2 = [9; -3; -9; -5; -6];
v3 = [1; -1; 3; 4; 3];
v4 = [5; -3; -1; 0; 1];

%%b
A = [v1 v2 v3 v4];
disp("Vectors of the polynomial functions v1-v4:")
disp(A);
%%c

rrefA = rref(A);
disp("rref of A =");
disp(rrefA);
disp("polynomials 1, 2 and 3 are a basis S for W since they are pivot");
disp(" polynomials");
disp("f1(x) = 7 - 3x + x^2 + 7x^3 + 2x^4");
disp("f2(x) = 9 - 3x - 9x^2 - 5x^3 - 6x^4");
disp("f3(x) = 1 - x + 3x^2 + 4x^3 + 3x^4");


%%d  
disp("The set of polynomials are linearly dependent since the last ");
disp("column is a linear combination of the other vectors and A is also");
disp("linearly dependent since not all columns are pivit columns.");
disp("The explicit dependent relationship is as follows:");
disp("from rref we can see: f4(x) = -f1(x) + f2(x) + f3(x)");


%% Problem 5
format short;
%%a correct?
x1 = 0.1;
x2 = .2;
x3 = .3;
x4 = .4;
x5 = .5;
A1 = [1, cos(x1), cos(x1).^2, cos(x1).^3, cos(x1).^4];
A2 = [1, cos(x2), cos(x2).^2, cos(x2).^3, cos(x2).^4];
A3 = [1, cos(x3), cos(x3).^2, cos(x3).^3, cos(x3).^4];
A4 = [1, cos(x4), cos(x4).^2, cos(x4).^3, cos(x4).^4];
A5 = [1, cos(x5), cos(x5).^2, cos(x5).^3, cos(x5).^4];
A = [A1; A2; A3; A4; A5];

disp(A);


%%b
rrefA = rref(A);
disp(rrefA);
disp("The rref(A) shows a trivial solution and also shows a pivot in every");
disp("column therefore matrix A is linearly independent"); 

%%c 
u1 = [1; 0; 0; 0; 0];
u2 = [0; 1; 0; 0; 0];
u3 = [-1; 0; 2; 0; 0];
u4 = [0; -3; 0; 4; 0];
u5 = [1; 0; -8; 0; 8];


%%d
B = [u1, u2, u3, u4, u5];
rrefB = rref(B);
disp(B);
disp(rrefB);
disp("The rref(A) shows a trivial solution and also shows a pivot in every");
disp("column therefor matrix A is linearly independent");
%%e 


disp("since c is a linearly independent set, it spans the same subspace ");
disp("as B, and any vector in D can be a linear combination of the ");
disp("vectors in C ");
disp("since matrix B and matrix A both have 5 dimentions (same dimention),");
disp(" we can conclude that matrix B is a basis for D");







