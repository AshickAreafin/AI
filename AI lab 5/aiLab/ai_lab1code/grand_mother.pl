male(jerry).
male(tom).
female(shelly).
male(kate).
father(shelly,bob).
father(bob,tom).
mother(shelly,bob).

grand_mother(shelly,tom):-female(shelly),mother(shelly,bob),father(bob,tom).