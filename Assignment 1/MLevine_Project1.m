
%Miles Levine
%Section 0412
%Matlab Project 1

%% Problem 1
%%a
format rat;
A=[1 -5 -3 -8 -5; 1 6 3 25 14; -1 4 -3 5 -3; 3 -2 -3 15 6];
disp(A);
%%b
disp("First step: Multiply row 1 by -1, then add it to row 2.");
disp(" Add row 1 to row 3. Multiply row 1 by -3, then add it to row 4.");
A(2,:) = -1*A(1,:) + A(2,:);
A(3,:) = A(1,:) + A(3,:);
A(4,:) = -3*A(1,:) + A(4,:);

disp(A);
disp("2nd step: Multiply row 2 by 1/11, then add it to row 3.");
disp(" Multiply row 2 by -13/11, then add it to row 4.");
A(3,:) = (1/11)*A(2,:) + A(3,:);
A(4,:) = (-13/11)*A(2,:) + A(4,:);
disp(A);
disp("3rd step: Multiply row 3 by -1/5, then add it to row 4.");
A(4,:) = A(3,:)*(-.2) + A(4,:);
disp(A);
disp("Matrix is now in REF, now solve for RREF");
disp("4th step: Scale row 2 by mutiplying row by 1/11. Scale row");
    disp(" 3 by mutiplying row by -11/60. Scale row 4 by mutiplying row by -5.");
A(2,:) = A(2,:)*(1/11);
A(3,:) = A(3,:)*(-11/60);
A(4,:) = A(4,:)*(-5);
disp(A);
disp("5th step: kill -5 in row 1 by multiplying row 2 by 5, then adding into row 1");
A(1,:) = 5*A(2,:)+A(1,:);
disp(A);
disp("6th step: kill -3/11 in row 1 by multiplying row 3 by 3/11, then");
    disp("adding into row 1. Also kill 6/11 in row 2 ");
    disp("by multiplying row 3 by -6/11, then adding into row 2");
A(1,:) = (3/11)*A(3,:)+A(1,:);
A(2,:) = (-6/11)*A(3,:)+A(2,:);
disp(A);
disp("7th step (final): kill 79/20 in row 1 by multiplying row 4 by");
disp(" -79/20, then adding into row 1. Also kill 11/10 in row 2 by ");
disp("multiplying row 4 by -11/10, then adding into row 2. Also kill ");
disp("23/20 in row 3 by multiplying row 4 by -23/20, then adding into row 3");
A(1,:) = (-79/20)*A(4,:)+A(1,:);
A(2,:) = (-11/10)*A(4,:)+A(2,:);
A(3,:) = (-23/20)*A(4,:)+A(3,:);

disp(A);
%%c
disp("using rref command:")
B=[1 -5 -3 -8 -5; 1 6 3 25 14; -1 4 -3 5 -3; 3 -2 -3 15 6];
X= rref(B);
disp(X);
%%d
disp("system has no solutions because it is inconsistant")
disp("");
disp("");
%% Problem 2
%%a
syms a b
%%b
M = [-60 350 a; 275 400 b];
M_rref = rref(M);
disp(M_rref);
%%c
c1 = M_rref(1,3);
c2 = M_rref(2,3);
disp("Coefficient for c1:");
disp(c1);
disp("Coefficient for c2:");
disp(c2);
%%d
V = [1; 1];
disp("A vector that works for w is ");
disp(V);
disp("w = [1; 1] works because it not a linear combination of the vector");
disp(" [-60; 275]. vector [1; 1] goes in a different direction than ");
disp("[-60; 275] so it is not in the span of T.");



%% Problem 3
A = [1 4 -4 3 0; 5 -2 5 3 0; 6 5 1 -7 0; 4 -4 5 0 0; 1 1 -1 2 0];
disp(A);
rref_A = rref(A);
disp(rref_A);
disp("Matrix A is linearly independent because ")
disp("the zero vector is the unique solution to Ax=0");

%% Problem 4

S = [1 1 1; 1 3 -3; 1 0 3];
w = [25; 55; 10];
M = [S w];
rref_M = rref(M);
disp(M);
disp(rref_M);

disp("There is not a unique linear combination to express w since not all ");
disp("colums are pivot columns.");


%% Problem 5

M = [1 1 2 1; 1 2 4 2; 1 1 12 3; 1 2 14 4];
rref_M = rref(M);
disp(M);
disp(rref_M);
%%a
disp("v1 is unable to be expressed as a linear combonation of v2, v3, v4 ");
    disp("because inconsistant");
%%b
M = [1 1 2 1; 2 2 4 1; 3 1 12 1; 4 2 14 1];
disp(M)
rref_M = rref(M);
disp(rref_M);
disp("v2 is unable to be expressed as a linear combonation of v1, v3, v4 ");
    disp("because inconsistant");
%%c
M = [1 1 2 1; 2 1 4 2; 3 1 12 1; 4 1 14 2];
disp(M)
rref_M = rref(M);
disp(rref_M);
disp("v3 is unable to be expressed as a linear combonation of v1, v2, v4");
   disp( " because inconsistant");
%%d
M = [1 1 1 2; 2 1 2 4; 3 1 1 12; 4 1 2 14];
disp(M)
rref_M = rref(M);
disp(rref_M);
disp("v4 is unable to be expressed as a linear combonation of v1, v2, v3");
    disp(" because inconsistant");

%%e
disp("According to the textbook, Theorem 7 in chapter 1.7 states that that");
disp("an indexed set S =  { v1, ..., vp} of two or more vectors is ");
disp("linearly dependent if and only if at least one of the vectors in S ");
    disp("is a linear combination of the others. (Lay et al.)");

disp("Citation: Lay, David C., et al. Linear Algebra and Its Applications.");
disp("5th ed., 2020.");
%%f
disp("If we only tested v2 then we could not conclude that S is linear ");
disp("independant or dependent. According to theorem 7, we must test ");
disp("all vectors in the vector set to see if they are linear ");
disp("combinations of each other.");

