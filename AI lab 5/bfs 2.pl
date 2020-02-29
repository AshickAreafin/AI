s(a, b).
s(a, c).
s(b, g).
s(b, f).
s(c, r).
s(c, e).
goal(g).

solve( Start, Solution) :-
    breadthfirst( [ [Start] ], Solution).

breadthfirst( [ [Node | Path] |_], [Node | Path] ) :-
    goal( Node).

breadthfirst( [ [N | Path] | Paths], Solution) :-
    bagof([M,N|Path],
    ( s( N, M), \+ member( M, [N | Path] ) ), NewPaths),
    %conc( Paths, NewPaths, Pathsl), !,
    append(Paths, NewPaths, Pathsl), !,
    breadthfirst( Pathsl, Solution);
    breadthfirst( Paths, Solution).