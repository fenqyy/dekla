/*
lista_wiêksza_o_2(L1,L2) 
spe³niony, gdy elementy listy L2 s¹ odpowiednimi elementami listy L1
powiêkszonymi o 2
--------------------------------------------------------------
*/

lista_wiêksza_o2([],[]).
lista_wieksza_o2([X|T1],[Y|T2]):-
	lista_wieksza_o2(T1,T2),
	Y is X+2.