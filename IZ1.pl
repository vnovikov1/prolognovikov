write(X,Y,Z):- write(X), write(" "), write(Y), write(" "), write(Z), write("\n").
proverka(X,Y,P):- Z is P-X-Y, X<Y+Z, Y<X+Z, Z<X+Y.
