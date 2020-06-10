write(X,Y,Z):- write(X), write(" "), write(Y), write(" "), write(Z), write("\n").
proverka(X,Y,P):- Z is P-X-Y, X<Y+Z, Y<X+Z, Z<X+Y.


start():-read(P),X is P-1, triangle(X,P,0).

trianle(X,_,K):- X=0, write("Всего "),write(K),write(" треугольников"),!.
triangle(X,P,K):- Y is P-X, obr(X,Y,P,K).

obr(X,Y,P,K):-Y=0,X1 is X-1,triangle(X1,P,K).
obr(X,Y,P,K):-proverka(X,Y,P),Z1 is P-X-Y,write3(X,Y,Z1),Y1 is Y-1,K1 is
K+1, obr(X,Y1,P,K1).
obr(X,Y,P,K):-Y1 is Y-1,obr(X,Y1,P,K).

