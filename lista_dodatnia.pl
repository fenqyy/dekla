% Wywo³anie predykatów dla ka¿dego elementu listy
% Predykaty
% dodatni(X), spe³niony gdy X liczb¹ dodatni¹

dodatni(X):-X>0.

% lista_dodatnia(L)
% spe³niony, gdy wszystkie elementy listy s¹ dodatnie

lista_dodatnia(L):-
	maplist(dodatni, L).

?- lista_dodatnia([1,2,3]).