-module(constructing_lists_tests).
-include_lib("eunit/include/eunit.hrl").

% nub removes dupes

double_direct_nil_test() -> [] = constructing_lists:double_direct([]).
double_direct_one_test() -> [2,4,6] = constructing_lists:double_direct([1,2,3]).

evens_nil_test() -> [] = constructing_lists:evens([]).
evens_one_test() -> [2,4,6] = constructing_lists:evens([1,2,3]).
evens_two_test() -> [2,2,2] = constructing_lists:evens([1,2,3,2,2]).

median_nil_test() -> [] = constructing_lists:median([]).
median_one_test() -> 4 = constructing_lists:median([7,4,9,1,10,2,3]).
