/*
lista_wi�ksza_o_2(L1,L2) 
spe�niony, gdy elementy listy L2 s� odpowiednimi elementami listy L1
powi�kszonymi o 2
--------------------------------------------------------------
*/

lista_wi�ksza_o2([],[]).
lista_wieksza_o2([X|T1],[Y|T2]):-
	lista_wieksza_o2(T1,T2),
	Y is X+2.