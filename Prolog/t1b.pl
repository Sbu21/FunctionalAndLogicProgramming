gcd(A, 0, A) :- A > 0.
gcd(A, B, GCD) :- B > 0, C is A mod B, gcd(B, C, GCD).

gcd_list([], 0).
gcd_list([X], X).
gcd_list([X|Xs], GCD) :-
    gcd_list(Xs, TempGCD),
    gcd(X, TempGCD, GCD),
!.

%gcd_list(List, Result) = {0, list is empty
%			   nr, list has only nr
%			   gcd_list([X|Xs], result)

%Output:GCD Input:List

% Test 1
%gcd_list([12, 18, 24], Result),
%writeln(Result).

% Test 2
%gcd_list([], Result),
%writeln(Result).
