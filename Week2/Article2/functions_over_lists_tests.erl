-module(functions_over_lists_tests).
-include_lib("eunit/include/eunit.hrl").


% Unit Tests For Perimeter
product_nil_test() -> 1 = assignment:perimeter([]).
product_one_test() -> 6 = assignment:perimeter([1,2,3]).