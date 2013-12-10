% Autor:
% Datum: 10.12.2013

%Aufgabe 60: e)

alphabet(a).
alphabet(b).

checkWord(Xs) :- doCheck(Xs, 0).

doCheck([], 6) :-!.
doCheck([X|Ys], State) :- alphabet(X), State = 0, X = a, doCheck(Ys,1).
doCheck([X|Ys], State) :- alphabet(X), State = 0, X = b, doCheck(Ys,0).
doCheck([X|Ys], State) :- alphabet(X), State = 1, X = a, doCheck(Ys,1).
doCheck([X|Ys], State) :- alphabet(X), State = 1, X = b, doCheck(Ys,2).
doCheck([X|Ys], State) :- alphabet(X), State = 2, X = a, doCheck(Ys,2).
doCheck([X|Ys], State) :- alphabet(X), State = 2, X = b, doCheck(Ys,3).
doCheck([X|Ys], State) :- alphabet(X), State = 3, X = a, doCheck(Ys,4).
doCheck([X|Ys], State) :- alphabet(X), State = 3, X = b, doCheck(Ys,3).
doCheck([X|Ys], State) :- alphabet(X), State = 4, X = a, doCheck(Ys,4).
doCheck([X|Ys], State) :- alphabet(X), State = 4, X = b, doCheck(Ys,5).
doCheck([X|Ys], State) :- alphabet(X), State = 5, X = a, doCheck(Ys,4).
doCheck([X|Ys], State) :- alphabet(X), State = 5, X = b, doCheck(Ys,6).
doCheck([X|Ys], State) :- alphabet(X), State = 6, X = a, doCheck(Ys,6).
doCheck([X|Ys], State) :- alphabet(X), State = 6, X = b, doCheck(Ys,6).
