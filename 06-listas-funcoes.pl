concatena([], X, X). % caso base da recursao. 3o argumento ou O segundo X é o resultado.
concatena([Cabecalho|Cauda], Y, [Cabecalho|Z]) :- concatena(Cauda, Y, Z).

pertence(X, [X|_]).
pertence(X, [_ | Y]) :- pertence(X, Y).

prefixo(X, Z) :- concatena(X, Y, Z).
sufixo(Y, Z) :- concatena(X, Y, Z).