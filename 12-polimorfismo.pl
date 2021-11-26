% Decomposição de termos
% Z =..[p, X, Y, f(X)]. (operador =..)
% ==> Z = p(X,Y,f(x)).

% aumentar figuras
% aumentar(quadrado(Lado), Fator, quadrado(Lado2)) :- 
%  Lado2 is Fator * Lado.
% aumentar(circulo(Raio), Fator, quadrado(Raio2)) :- 
%  Raio2 is Fator * Raio.
% aumentar(retangulo(LadoA, LadoB), Fator, retangulo(LadoA2, LadoB2)) :- 
%  LadoA2 is Fator * LadoA, LadoB2 is Fator * LadoB.

multiplicar([], _, []).
multiplicar([E|L], F, [EM|L1]) :-
  multiplicar(L,F,L1), EM is E * F.

aumentar(Figura, Fator, FiguraResultado) :-
  Figura =.. [Tipo|Parametros],
  multiplicar(Parametros, Fator, ParametrosResultado),
  FiguraResultado =.. [Tipo|ParametrosResultado].

% aumentar(circulo(10), 6, FiguraResultado).
% aumentar(retangulo(12, 4), 3, FiguraResultado).