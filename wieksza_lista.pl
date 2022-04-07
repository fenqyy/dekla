% wieksza_lista(L1,L2) - spelniony, gdy elementy listy L1 sa wieksze od 
% elementow listy L2

wiekszy_od(X,Y):-Y>X.

wieksza_lista(L1,L2):-
	maplist(wiekszy_od,L2,L1).