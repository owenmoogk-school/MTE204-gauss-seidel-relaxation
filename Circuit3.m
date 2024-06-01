% Define the coefficient matrix (A) and constant vector (b)
A = [
    1 0 0 0 0;
    -1 1 0 0 0;
    1/15 1/5 -11/30 1/10 0;
    1/25 0 1/10 0.19 1/20;
    -1 0 0 0 1;
];

% Define the constants vector (form Ax=b, this is b)
B = [0; 80; 0; 0; 50;];

% define parameters
initialGuess = [-100;-100;-100;-100;-100;];
maxIterations = 1000;
errorLevel = 0.0000001;

solution = GaussSeidel(A, B, initialGuess, maxIterations, errorLevel);

% display the solution
disp("Solution Vector (Gauss-Seidel):");
disp(solution);


% Solve the system of equations
realSolution = linsolve(A, B);
% Display real solution
disp('Solution vector (real):');
disp(realSolution);