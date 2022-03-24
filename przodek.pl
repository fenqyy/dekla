/* Ania i Jan s� rodzicami Jacka.
Ania i Jan s� rodzicami Basi.
Stefan jest rodzicem Jana.
Maria i Borys s� rodzicami Anii.
rodzic(X,Y) - spe�niony, gdy X jest rodzicem Y.
przodek(X,Y) - spe�niony, gdy X jest przodkiem Y. */



rodzic(ania,jacek).
rodzic(jan,jacek).
rodzic(ania,basia).
rodzic(jan,basia).
rodzic(stefan,jan).
rodzic(maria,ania).
rodzic(borys,ania).
przodek(X,Y):-rodzic(X,Y).
przodek(X,Y):-rodzic(X,Z),przodek(Z,Y).
?-przodek(stefan,jacek).
?-przodek(X,basia).
?-przodek(borys,Y).