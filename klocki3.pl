/*na(X,Y)-klocek X le�y bezpo�rednio na klocku Y
nad(X,Y) - klocek X le�y nad klockiem Y
    -
   |d|
    -
    -
   |c|
    -
 -    -
|a|  |b|
 -    -
 -    -
|e|  |g|
 -    -
*/





na(d,c).
na(c,a).
na(c,b).
na(a,e).
na(b,g).
nad(X,Y):-na(X,Y).
nad(X,Y):-na(X,Z),nad(Z,Y).