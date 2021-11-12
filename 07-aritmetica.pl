populacao(eua, 203).
populacao(india, 548).
populacao(china, 800).
populacao(brasil, 108).

area(eua, 8).
area(india, 3).
area(china, 10).
area(brasil, 8).

dens(X, Y) :-
    populacao(X, P),
    area(X, A),
    Y is P/A.