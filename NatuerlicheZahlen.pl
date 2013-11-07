% Autor:
% Datum: 12.10.2013

natsymb(o).
natsymb(s(X)) :- natsymb(X).

um1erhöhen(o).
um1erhöhen(s(X)) :- um1erhoöhen(X).

add(X,o,X).
add(X,s(Y),E)  :- add(s(X),Y,E).

mult(X,o,o).
%mult(X,s(o),X).
mult(X,s(Y),E) :- mult(X,Y,H),add(H,X,E).

natList(nil).
natList(list(X,Y)) :- natsymb(X),natList(Y).

invList(nil).
invList(X) :- natList(s(Y),X).%,invList(list(X,Y)).

kante(a,b).
kante(a,c).
kante(a,d).
kante(a,e).
kante(b,c).
kante(b,d).
kante(b,e).
kante(c,e).
kante(e,c).
kante(e,d).

weg(X,X).
weg(X,Y) :- kante(X,H),weg(H,Y).

wegsträke(X,Y,Knotens) :- weg(X,Y),invList(list(X,Y)).

tree(a).
tree(b).
tree(c).
%tree(X).
%tree(Y).
%tree(Z).
tree(f(X,Y)) :- tree(X), tree(Y).
tree(g(X)):- tree(X).
tree(h(X,Y,Z)) :- tree(X), tree(Y), tree(Z).
