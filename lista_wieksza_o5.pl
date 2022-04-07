% lista_wieksza_o5(L1,L2) - spelniony gdy elementy listy l2 sa elementami
% listy l1 powiekszone o 5

powieksz_o5(X,Y):- Y is X+5.

lista_wieksza_o5(L1,L2):-
	maplist(powieksz_o5,L1,L2).