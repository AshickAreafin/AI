fibonacci(1, 1).
fibonacci(2, 1).
fibonacci(N, R) :- A is N - 1, B is N - 2, fibonacci(A, R0), fibonacci(B, R1), R is R0 + R1.
