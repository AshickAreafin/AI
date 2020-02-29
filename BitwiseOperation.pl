and(X, Y) :- R is X /\ Y, write(R).
or(X, Y) :- R is X \/ Y, write(R).
xor(X, Y) :- R is X xor Y, write(R).
shiftL(X, Y) :- R is X << Y, write(R).
shiftR(X, Y) :- R is X >> Y, write(R). 