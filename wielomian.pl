/* Bêdzie to program, który rozpoznaje wielomiany
jednej zmiennej o wspó³czynnikach liczbowych. 

Definicja: rekurencja strukturalna

1) x jest wielomianem zmiennej x:
   c- liczba jest wielomianem dowolnej zmiennej.
2) je¿eli w, w1, w2 s¹ wielomianami zm. x, to
   -w, w1+w2, w1-w2, w1*w2, w^n (n-liczba naturalna)
   s¹ wielomianami zmiennej x.


wielomian(W,X)
spe³niony, gdy W jest wielomianem zmiennej X
o wspó³czynnikach liczbowych

Definicja rekurencyjna: 

warunki zakoñczenia rekurencji:
*/

	wielomian(X,X).
	wielomian(C,_):-number(C).

% rekurencja

	
	wielomian(-W,X):-wielomian(W,X).
	wielomian(W1+W2,X):-wielomian(W1,X),
			    wielomian(W2,X).
	wielomian(W1-W2,X):-wielomian(W1,X),
			    wielomian(W2,X).
	wielomian(W1*W2,X):-wielomian(W1,X),
			    wielomian(W2,X).
	wielomian(W1^N,X):-integer(N),
			   N>1,
			   wielomian(W,X).
	?-wielomian(y,y).
	?-wielomian(3,x).
	?-wielomian(2*x+1,x).
	?-wielomian(3*x^2,x).
	?-wielomian(x^(-3),x).