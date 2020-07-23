diferentes(red, green).
diferentes(red, blue).
diferentes(green, red).
diferentes(green, blue).
diferentes(blue, red).
diferentes(blue, green).

coloracao(BA, MA, PI, CE, RN, PB, PE, AL, SE) :-
    diferentes(BA, MA),
    diferentes(BA, PI),
    diferentes(BA, PE),
    diferentes(BA, AL),
    diferentes(BA, SE),
    diferentes(MA, PI),
    diferentes(PI, CE),
    diferentes(PI, PE),
    diferentes(CE, RN),
    diferentes(CE, PE),
    diferentes(RN, PB),
    diferentes(PB, PE),
    diferentes(PE, AL),
    diferentes(AL, SE).