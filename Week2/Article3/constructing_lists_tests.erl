-module(constructing_lists_tests).
-include_lib("eunit/include/eunit.hrl").

% nub removes dupes

double_direct_nil_test() -> [] = constructing_lists:double_direct([]).
double_direct_one_test() -> [2,4,6] = constructing_lists:double_direct([1,2,3]).