male(gf). 
male(f).
male(s).
female(gm).
female(m).
female(d).

grandfather(s, gf).
grandfather(d, gf).

grandmother(s, gm).
grandmother(d, gm).

father(f, gf).
mother(f, gm).

father(s, f).
father(d, f).
mother(s, m).
mother(d, m).

grandfather(X, Y) :- male(Y), father(X, Z), father(Z, Y).
grandmother(X, Y) :- female(Y), father(X, Z), mother(Z, Y).
sister(X, Y) :- male(X), female(Y), father(X, Z), father(Y, Z).
brother(X, Y) :- female(X), male(Y), father(X, Z), father(Y, Z). 
