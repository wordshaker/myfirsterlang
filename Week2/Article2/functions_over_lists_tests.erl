-module(functions_over_lists_tests).
-include_lib("eunit/include/eunit.hrl").


% Unit Tests For Product
product_nil_test() -> 1 = functions_over_lists:product([]).
product_one_test() -> 6 = functions_over_lists:product([1,2,3]).

% Unit Tests for Maximum
maximum_one_test() -> 7 = functions_over_lists:maximum([3,2,7,4]).