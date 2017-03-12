-module(functions_over_lists_tests).
-include_lib("eunit/include/eunit.hrl").


% Unit Tests For Product
product_tail_nil_test() -> 1 = functions_over_lists:product_tail([]).
product_tail_one_test() -> 6 = functions_over_lists:product_tail([1,2,3]).

% Unit Tests For Product
product_direct_nil_test() -> 1 = functions_over_lists:product_direct([]).
product_direct_one_test() -> 6 = functions_over_lists:product_direct([1,2,3]).

% Unit Tests for Maximum Tail Recursion
maximum_tail_nil_test() -> "NA" = functions_over_lists:maximum_tail([]).
maximum_tail_one_test() -> 7 = functions_over_lists:maximum_tail([3,2,7,4]).

% Unit Tests for Maximum Direct Recursion
maximum_direct_nil_test() -> "NA" = functions_over_lists:maximum_direct([]).
maximum_direct_one_test() -> 7 = functions_over_lists:maximum_direct([3,2,7,4]).