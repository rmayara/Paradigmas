gosta_de(jose, maria).
gosta_de(maria, jose).
gosta_de(maria, vinicius).

amizade(X,Y) :- gosta_de(X, Y), gosta_de(Y, X).