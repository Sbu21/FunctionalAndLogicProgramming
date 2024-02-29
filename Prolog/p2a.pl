remove_duplicates([],[]).
remove_duplicates([X], [X]).

remove_duplicates([H|T], Result):-
    member(H, T),
    !,
    remove_duplicates(T, Result).

remove_duplicates([H|T], [H|Result]):-
                  remove_duplicates(T, Result).

sort_and_remove_duplicates([], []).

sort_and_remove_duplicates(List, SortedUniqueList):-
    sort(List, SortedList),
    remove_duplicates(SortedList, SortedUniqueList).

%remove_duplicates(List=int list, Result=int list) = {true, List = []
%                                                  List - H, H duplicate
%                                                  List, H not duplicate
%sort_and_remove_duplicates(List = hetr list, Result) = {true, List = []
%                                            SortedList, List != []
%
%Input: List
%Output: Result
%
%Test 1:
%sort_and_remove_duplicates([4, 2, 6, 2, 3, 4], Result),
%writeln(Result).
%
%Test 2:
%sort_and_remove_duplicates([5, 4, 3, 2, 2], Result),
%writeln(Result).

%---------------------------------------

remove_duplicates_b([],[]):- !.

remove_duplicates_b([H|T], [H|Result]) :-
    integer(H),
    remove_duplicates_b(T, Result).

remove_duplicates_b([Sublist|T], [SortedSublist|Result]) :-
    is_list(Sublist),
    sort_and_remove_duplicates(Sublist, SortedSublist),
    remove_duplicates_b(T, Result).


%remove_duplicates_b(List, Result) = {true, List = []
%                                  List, H integer
%                                  [Sorted H|List], H is sublist
%Input: List
%Output: Result
%
%Test 1:
%remove_duplicates_b([1, 2, [4, 1, 4], 3, 6, [7, 10, 1, 3, 9], 5, [1, 1, 1], 7], Result), writeln(Result).
%
%Test 2:
% remove_duplicates_b([[2, 1, 2], 7, [7, 10, 10, 7, 9], 2, [1, 2, 1],
% 7], Result), writeln(Result).
