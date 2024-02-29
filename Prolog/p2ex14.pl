longest_even_sequence(List, LongestSequence) :-
    findall(Sequence, consecutive_even_numbers(List, Sequence), Sequences),
    find_longest_sequence(Sequences, LongestSequence).

% Helper predicate to find consecutive even numbers in a list
consecutive_even_numbers([], []).
consecutive_even_numbers([H | T], [H | Rest]) :-
    0 is H mod 2,
    consecutive_even_numbers(T, Rest).
consecutive_even_numbers([H | _], []) :-
    1 is H mod 2.

% Helper predicate to find the longest sequence in a list of sequences
find_longest_sequence([], []).
find_longest_sequence([H | T], Longest) :-
    find_longest_sequence(T, TempLongest),
    (length(H, LH), length(TempLongest, LT), LH > LT -> Longest = H ; Longest = TempLongest).
