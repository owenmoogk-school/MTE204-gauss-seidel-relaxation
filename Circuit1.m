% Define the coefficient matrix (A) and constant vector (b)
A = [
    1 0 0 0 0 0;
    1/10 -0.35 1/20 0 1/5 0;
    0 1/20 -0.55 1/2 0 0;
    0 0 1/2 -0.7 1/5 0;
    0 1/5 0 1/5 -0.44 1/25;
    0 0 0 0 0 1
];

% Define the constants vector (form Ax=b, this is b)
B = [200; 0; 0; 0; 0; 0];

% define parameters
initialGuess = [0; 0; 0; 0; 0; 0;];
maxIterations = 1000;
errorLevel = 0.0001;
relaxation = 0.8;

solution = GaussSeidel(A, B, initialGuess, maxIterations, errorLevel, relaxation);

% display the solution
disp("Solution Vector (Gauss-Seidel):");
disp(solution);


% Solve the system of equations
realSolution = linsolve(A, B);
% Display real solution
disp('Solution vector (real):');
disp(realSolution);