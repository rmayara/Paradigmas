mae(maria, joana).
mae(joana, luis).
mae(cleia, otavio).
pai(orozimbo, otavio).
pai(otavio, luis).
irmao(orozimbo, manuel).

ancestral(X, Y) :- mae(X, Y); pai(X, Y).            /* ";" para "ou" */
ancestral(X, Y) :- (mae(X, Z); pai(X, Z)), ancestral(Z, Y).    /* "," para "e" */

/*
?- ancestral(maria, luis).
true .

?- ancestral(X, luis).
X = joana .
*/