brother(ashick,shaima).
male(ashick). 
male(shaima).

sister(shaima,ashick).

married(akand,afroza). 
male(akand).
female(afroza).

male(abdin).
female(jahanara).
married(abdin,jahanara).

father(abdin,akand).
male(rubel).
brother(rubel,akand).
female(nargis).
sister(nargis,akand).
married(rubel,runa).
female(runa).

bankworker(akand).
housewife(afroza).
student(ashick).
student(shaima).
father(akand,ashick).
father(akand,shaima).
mother(jahanara,akand).
mother(afroza,ashick).
mother(afroza,shaima).

grandfather(X,Y):- male(X), father(X,Z),father(Z,Y).
grandmother(X,Y):-female(X),mother(X,Z),father(Z,Y).
uncle(X,Y):-male(X),brother(X,Z),father(Z,Y).
aunty(X,Y):-female(X),sister(X,Z),father(Z,Y).
