/* B�dzie to program, kt�ry rozpoznaje wielomiany
jednej zmiennej o wsp�czynnikach liczbowych. 

Definicja: rekurencja strukturalna

1) x jest wielomianem zmiennej x:
   c- liczba jest wielomianem dowolnej zmiennej.
2) je�eli w, w1, w2 s� wielomianami zm. x, to
   -w, w1+w2, w1-w2, w1*w2, w^n (n-liczba naturalna)
   s� wielomianami zmiennej x.


wielomian(W,X)
spe�niony, gdy W jest wielomianem zmiennej X
o wsp�czynnikach liczbowych

Definicja rekurencyjna: 

warunki zako�czenia rekurencji:
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