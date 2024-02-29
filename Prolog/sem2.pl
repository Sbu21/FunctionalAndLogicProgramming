munte([_], 1, 1):- !.
munte([H1, H2|T], 0, 0):- H1 < H2, !, munte([H2|T], 1, 0).
munte([H1, H2|T], 1, 0):- H1 < H2, !, munte([H2|T], 1, 0).
munte([H1, H2|T], 1, 0):- H1 > H2, !, munte([H2|T], 1, 1).
munte([H1, H2|T], 1, 1):- H1 > H2, !, munte([H2|T], 1, 1).
munte(L):-munte(L, 0, 0).

