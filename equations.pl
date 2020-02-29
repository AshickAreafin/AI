gcd(X, 0) :- write("GCD = "), write(X).
gcd(X, Y) :- M is X mod Y, gcd(Y, M).

solve(A, B, C) :- B1 is B / A, C1 is C / A, Z is -B1 / 2, Y is ((Z * Z) - C1), Y < 0, write("No solution").
solve(A, B, C) :- B1 is B / A, C1 is C / A, Z is -B1 / 2, Y is ((Z * Z) - C1), U is sqrt(Y), write("X = "), X1 is (Z - U), X2 is (Z + U), write(X1), write(", "), write(X2).

areaCircle() :- write("enter radius: "), read(R), nl,
				A is 3.14159 * R * R,
				write("area of the circle: "), write(A).
areaTriangle() :- write("enter height: "), read(H),
				write("enter base: "), read(B), nl,
				A is 0.5 * H * B,
				write(A).