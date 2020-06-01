write(X,Y,Z):- write(X), write(" "), write(Y), write(" "), write(Z), write("\n").
proverka(X,Y,P):- X<Y+Z, Y<X+Z, Z<X+Y, P1 is P-X-Y .
