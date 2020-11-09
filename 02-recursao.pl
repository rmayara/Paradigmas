mae(maria, joana).
mae(joana, luis).
mae(cleia, otavio).
pai(orozimbo, otavio).
pai(otavio, luis).
irmao(orozimbo, manuel).

% Posso ter regras recursivas
% As regras pode ser repetidas, uma delas precisa ser critério de parada
ancestral(X, Y) :- mae(X, Y); pai(X, Y). % * ";" para "ou". => Criterio de parada
ancestral(X, Y) :- (mae(X, Z); pai(X, Z)), ancestral(Z, Y). % "," para "e" => Regra recursiva

/*
?- ancestral(maria, luis).
true .

?- ancestral(X, luis).
X = joana .
*/