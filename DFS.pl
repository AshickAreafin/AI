edge(1, 2).
edge(1, 4).
edge(1, 5).
edge(2, 3).
edge(4, 5).
edge(3, 5).
edge(5, 7).
edge(3, 8).
edge(3, 6).
edge(8, 6).
edge(8, 7).
%edge(X,Y) :- edge(Y,X) , ! .
connected(X,Y) :- edge(X,Y) ;  edge(Y,X).

path(A,B,Path)  :-
	traverse(A,B,[A],Q),
	reverse(Q,Path).
traverse(A,B,P,[B|P] ) :-
	connected(A,B).
traverse(A,B,Visited,Path) :-
	connected(A,C),
	C  \== B,
	\+member(C,Visited),
	traverse(C,B,[C|Visited],Path).