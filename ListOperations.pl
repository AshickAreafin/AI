len([], 0).
len([H|T], L) :- len(T, L0), L is L0 + 1.

sum([], 0).
sum([H|T], S) :- sum(T, S0), S is S0 + H.

maxList([X], X).
maxList([X, Y | Z], M) :- maxList([Y | Z], M0), max(X, M0, M).

max(X, Y, X) :- X >= Y.
max(X, Y, Y) :- X < Y.

minList([X], X).
minList([X, Y | Z], M) :- minList([Y | Z], M0), min(X, M0, M).

min(X, Y, X) :- Y >= X.
min(X, Y, Y) :- Y < X.
