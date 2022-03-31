liczba_elem([],0).
liczba_elem([X|T],N):- 
	liczba_elem(T,K),
	N is K+1.
	