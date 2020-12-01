% sudoku([_,_,2,3,
%          _,_,_,_,
%          _,_,_,_,
%          3,4,_,_],Solucao).
% sudoku([_,_,2,3,_,_,_,_,_,_,_,_,3,4,_,_],Solucao).

todos_diferentes(X, Y, Z, W) :- 
    \+ (X = Y), \+ (X = Z), \+ (X = W),
    \+ (Y = Z), \+ (Y = W), \+ (Y = X),
    \+ (Z = X), \+ (Z = Y), \+ (Z = W).
    
sudoku(Sudoku,Saida) :-
    Saida = Sudoku,
    Sudoku = [A11, A12, A13, A14,
              A21, A22, A23, A24,
              A31, A32, A33, A34,
              A41, A42, A43, A44],
    fd_domain(Saida,1,4),
    fd_all_different([A11, A12, A21, A22]), % Q1
    fd_all_different([A13, A14, A23, A24]), % Q2
    fd_all_different([A31, A32, A41, A42]), % Q3
    fd_all_different([A33, A34, A43, A44]), % Q4

    fd_all_different([A11, A12, A13, A14]), % Linha 1
    fd_all_different([A21, A22, A23, A24]), % Linha 2
    fd_all_different([A31, A32, A33, A34]), % Linha 3
    fd_all_different([A41, A42, A43, A44]), % Linha 4

    fd_all_different([A11, A21, A31, A41]), % Coluna 1
    fd_all_different([A12, A22, A32, A42]), % Coluna 2
    fd_all_different([A13, A23, A33, A43]), % Coluna 3
    fd_all_different([A14, A24, A34, A44]). % Coluna 4