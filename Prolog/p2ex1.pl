sort_list([A], [A]).
sort_list([A|List], Result):-
    sort_list(List, Sorted),
    insert_in_list(A, Sorted, Result).

insert_in_list(A, [], [A]).
insert_in_list(A, [B|List], [A,B|List]):- A =< B.
insert_in_list(A, [B|List], [B|Result]):-
    A > B,
    insert_in_list(A, List, Result),
    !.

remove_doubles([],[]):- !.
remove_doubles([A], [A]):- !.
remove_doubles([A,A|List], Result):-
    remove_doubles([A|List], Result),
    !.
remove_doubles([A,B|List], [A,B|Result]):-
    A \= B,
    remove_doubles([B|List], [B|Result]).

sort_heterogeneous([],[]).
sort_heterogeneous([A|List], [B|Result]):-
    is_list(A),
    sort_list(A, Sorted),
    remove_doubles(Sorted, B),
    sort_heterogeneous(List, Result),
    !.
sort_heterogeneous([A|List], [A|Result]):-
    sort_heterogeneous(List, Result),
    !.
