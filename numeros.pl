:-op(900, xf, [ehNumero,ehPar,ehImpar,ehPrimo, ehPrimo2, ehPrimoFermat, ehComposto]).
:-op(900, xfx,ehDivisivelPor).

:-discontiguous ehNumero/1, ehPrimo/1.

1 ehNumero.
2 ehPrimo.

X ehNumero:- Y ehNumero, X is (Y+1).

X ehPar:- Y ehNumero, X is (Y*2).
X ehImpar:- Y ehNumero, X is (Y*2 + 1).

X ehDivisivelPor Y:- 0 is X mod Y, !.
X ehDivisivelPor Y:- X > Y+1, X ehDivisivelPor Y+1.

X ehPrimo:- X ehNumero, X > 2, not(X ehDivisivelPor 2).

%Números prímos X^2 - x + 41
X ehPrimo2:- Y ehNumero, Y < 41, X is (Y*Y - Y + 41).

primos(Z,X,Y):- Z ehNumero, Z >= X, Z <Y, not(Z ehDivisivelPor 2).

%Números Primos de Fermat
X ehPrimoFermat:- Y ehNumero, pow(2,Y,W), pow(2,W,Z), X is (Z + 1).

X ehComposto:- \+X ehPrimo.

pow(0,X,0):- X>0.
pow(X,0,1):- X>0.
pow(X,Y,Z):- X>0,Y>0,Y1 is Y-1,pow(X,Y1,Z1), Z is Z1*X.