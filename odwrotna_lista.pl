konkat([],L,L).
konkat([H1|T1],L2,[H1|T3]):-
	konkat(T1,L2,T3). 




%odwrotna_lista(L1,L2) - spe³niony,gdy lista L2 jest odwróceniem listy L1.
%Warunek koñcz¹cy rekurencjê: 


odwrotna_lista([],[]).

% rekurencja:

odwrotna_lista([H|T1],L):-odwrotna_lista(T1,T2),konkat(T2,[H],L).

?- odwrotna_lista([1,2,3],[3,2,1]).
?- odwrotna_lista([a,b,c],X).
?- odwrotna_lista([],X).