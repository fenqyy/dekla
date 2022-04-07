% kwadrat_listy(L1,L2) - spe�niony, gdy elementy listy L2 s�
% kwadratami listy L1
% kwadrat(X,Y) - spe�niony, gdy Y jest kwadratem X.

kwadrat(X,Y):- Y is X*X.

kwadrat_listy(L1,L2):-
	maplist(kwadrat,L1,L2).

?- kwadrat_listy([2,4],[4,16]).
?- kwadrat_listy([1,2,5],X).