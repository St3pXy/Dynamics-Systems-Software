clc;
clear;

% % SYNTAX BASIS:
% % MUST WRITE A MATRIX IN STANDARD MATHLAB SYNTAX, 
% % FOR EXAMPLE THE IDENTIC MATRIX MUST BE DEFINED AS:
% % [1,0,0;0,1,0;0,0,1]

% squared matrix dimension (nxn)
n = input("Insert matrix dimension: ");

A = input("Insert the matrix: ")
% % Actual code can't yet support parameters in matrix
% % that will come in a future update.

% Characteristic polynomial evaluation
syms x;
I = eye(n);
char_poly = simplify(det(x*I - A));
disp('Polinomio caratteristico:');
pretty(char_poly);

% FEATURE NOT WORKING YET %

% % Minimal polynomial evaluation
% min_poly = minpoly(A);
% disp('Polinomio minimo:');
% disp(min_poly);

% Eigenvalues evaluation and their algebraic multiplicity

[eig_vals, D] = eig(A);
lambda = diag(D);
[unique_eigs, ~, idx] = unique(lambda);
counts = accumarray(idx, 1);

disp('Autovalori e molteplicità algebriche:');
for i = 1:length(unique_eigs)
    fprintf('Autovalore: %.4f | Molteplicità algebrica: %d\n', unique_eigs(i), counts(i));
end
