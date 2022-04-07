% wiekszy_od(X,Y)
% spe³niony, gdy Y jest wiêksze od X
	
	wiekszy_od(X,Y):-Y>X.

% wiekszy_od_lista(+X,+L).
% spelniony, gdy wszyystkie elementy listy L sa wieksze od X

	wiekszy_od_lista(X,L):-
		maplist(wiekszy_od(X),L).

?- wiekszy_od_lista(1, [2,4]).
