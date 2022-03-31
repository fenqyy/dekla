/*
Uzgadnianie list:

1. [X|T]  [a,f(b),c,d]

X=a,
T=[f(b),c,d]



2. [a,b]  [X,Y|T]

X=a, Y=b, T=[]



3. [b]  [X,Y|T]

ta lista nie posiada drugiego elementu, przez co nie mo¿emy podstawiæ 
nic za Y.



4. [a,[b,c]]  [X|T]

X=a, T=[[b,c]]



5. [X,Y|T]   [a,[b,c]]

X=a, Y=[b,c], T=[]

*/

/*
Kwadrat_listy(+L1,?L2).
spe³niony, gdy elementy listy L2 s¹ kwadratami elementów listy L1;
Lista L1 jest list¹ liczbow¹ ograniczena: L1 i L2 s¹ listami liczbowymi.
-------------------------------------------------------------

Warunek koñcz¹cy rekurencjê: kwadrat listy pustej jest lista pusta.
*/

kwadrat_listy([],[]).

% rekurencja:

kwadrat_listy([H1|T1],[H2|T2]):-
	H2 is H1*H1,
	kwadrat_listy(T1,T2).

?-kwadrat_listy([1,2],[1,4]).
?-kwadrat_listy([2,4],X).
?-kwadrat_listy(X,[4,25]). /* W tym programie nie otrzymamy odpowiedzi
na to. */

