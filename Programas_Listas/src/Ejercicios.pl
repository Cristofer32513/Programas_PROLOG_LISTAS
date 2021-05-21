%Contar los elementos de una lista.
cuenta_elementos([], 0).
cuenta_elementos([_|L], N):-cuenta_elementos(L, Tam), N is Tam + 1.

%Sumar los elementos de una lista.
suma_elementos([], 0).
suma_elementos([X|L], N):-suma_elementos(L, C), N is C + X.