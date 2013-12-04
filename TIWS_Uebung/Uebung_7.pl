% Autor:
% Datum: 17.11.2013

app([X|Xs],Ys,[X|Rs]) :- app(Xs,Ys,Rs).
app([],Xs,Xs).

%Aufgabe: 34
members(X,[X|Ys]).
members(X,[Y|Ys]) :- members(X,Ys).

add_el(X,Ls,Rs) :- !, members(X,Ls), app([],Ls,Rs).
add_el(X,Ls,Rs) :- app([X],Ls,Rs).