% Wywo�anie predykat�w dla ka�dego elementu listy
% Predykaty
% dodatni(X), spe�niony gdy X liczb� dodatni�

dodatni(X):-X>0.

% lista_dodatnia(L)
% spe�niony, gdy wszystkie elementy listy s� dodatnie

lista_dodatnia(L):-
	maplist(dodatni, L).

?- lista_dodatnia([1,2,3]).