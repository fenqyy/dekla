% wiekszy_od(X,Y)
% spe�niony, gdy Y jest wi�ksze od X
	
	wiekszy_od(X,Y):-Y>X.

% wiekszy_od_lista(+X,+L).
% spelniony, gdy wszyystkie elementy listy L sa wieksze od X

	wiekszy_od_lista(X,L):-
		maplist(wiekszy_od(X),L).

?- wiekszy_od_lista(1, [2,4]).
