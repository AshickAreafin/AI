plus(X, Y) :- S is X + Y, write(S). 
minus(X, Y) :- S is X - Y, write(S). 
multiply(X, Y) :- S is X * Y, write(S).
division(X, 0) :- write("divide by zero").
division(X, Y) :- S is X / Y, write(S).
modulus(X, Y) :- S is X mod Y, write(S).
power(X, Y) :- S is X ^ Y, write(S).