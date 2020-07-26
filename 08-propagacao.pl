calc(Chickens, Cows) :- 
   Chickens + Cows #= 30, % Restricao aritmetica: http://www.gprolog.org/manual/gprolog.html#sec315
   Chickens*2 + Cows*4 #= 74. 