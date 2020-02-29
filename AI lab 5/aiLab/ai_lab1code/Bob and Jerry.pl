Bob and Jerry are siblings.Kate and Shelly are their parent.Kate is a programmer and shelly is a office worker.Bob is working in a bank and Jerry is in a corporate office.Bob married with Tiny.They have child whose name is Tom.

grandFather(X,Y):-male(X),father(X,Z),father(Z,Y).
grandFather(shelly,Tom):-male(shelly),father(shelly,Bob),father(Bob,Tom).