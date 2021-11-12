% Fibonnacci
% fib(N,R) ?
% F = F-1 + F-2
% F(1) = 1
% F(0) = 0

% dada uma lista L de números, como calculo o maximo N?
% L = [0, 10, 3, -2], N = 10
% max(N,L). 

max(N,[N|[]]).
max(N,[X|Cauda]) :- max(M,Cauda), M >= X, N is M.
max(N,[X|Cauda]) :- max(M,Cauda), M < X, N is X.