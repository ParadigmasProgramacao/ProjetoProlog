primo(2).
primo(3).
primo(X) :- integer(X), X > 3, X mod 2 =\= 0, \+fator_primo(X,3).
fator_primo(Y,Z) :- Y mod Z =:= 0.
fator_primo(Y,Z) :- Z * Z < Y, W is Z + 2, fator_primo(Y,W). 
