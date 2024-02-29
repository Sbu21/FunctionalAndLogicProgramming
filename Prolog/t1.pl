insert_nth(Element, 1, List, [Element|List]).

insert_nth(Element, N, [H|T], [H|Result]) :-
    N > 1,
    N1 is N - 1,
    insert_nth(Element, N1, T, Result),
    !.

insert_nth(_, _, List, List).

%insert_nth(elem, n, List, Result) = {true, n = 1
%				      insert_nth(elem, n-1, List - first elem, Result)
%				      false, n < 1 or n > len
% Output: Result
% Input: Element, N, List

% Test 1
%insert_nth('X', 3, [a, b, c, d], Result),
%writeln(Result).

% Test 2
%insert_nth('Z', 1, [], Result),
%writeln(Result).
