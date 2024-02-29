sum_of_lists([],[],0,[]):- !.
sum_of_lists([],[],C,[C]):- !.
sum_of_lists([H|T],[], Cin,[Digit|Result]):-
    !,
    Sum is H + Cin,
    Cout is floor(Sum/10),
    Digit is (Sum mod 10),
    sum_of_lists(T, [], Cout, Result).
sum_of_lists([],[H|T], Cin,[Digit|Result]):-
    !,
    Sum is H + Cin,
    Cout is floor(Sum/10),
    Digit is (Sum mod 10),
    sum_of_lists([], T, Cout, Result).
sum_of_lists([H1|T1],[H2|T2], Cin,[Digit|Result]):-
    Sum is (H1 + H2 + Cin),
    Cout is floor(Sum/10),
    Digit is (Sum mod 10),
    !,
    sum_of_lists(T1, T2, Cout, Result).

