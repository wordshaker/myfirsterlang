-module(assignment_tests).
-include_lib("eunit/include/eunit.hrl").

% Unit Tests For Perimeter
perimeter_square_nil_test() -> 16 = assignment:perimeter({square, 4}).
perimeter_rectangle_nil_test() -> 18 = assignment:perimeter({rectangle, 4, 5}).
perimeter_triangle_nil_test() -> 15 = assignment:perimeter({triangle, 4, 5, 6}).
%perimeter_rightangledtriangle_nil_test() -> 12 = assignment:perimeter({rightangledtriangle, 4, 3}).
perimeter_circle_nil_test() -> 31.41592653589793 = assignment:perimeter({circle, 10}).

% Unit Tests For Area
%area_rightangledtriangle_nil_test() -> 16 = assignment:area({rightangledtriangle, 3, 4, 5}).
%area_rightangledtriangle_one_test() -> 16 = assignment:perimeter({rightangledtriangle, 3, 4}).
area_triangle_nil_test() -> 12.0 = assignment:area({triangle, 5, 6, 5}).
area_square_nil_test() -> 100 = assignment:area({square, 10}).
area_rectangle_nil_test() -> 50 = assignment:area({rectangle, 10,5}).
area_circle_nil_test() -> 246.74011002723395 = assignment:area({circle, 10}).

% Unit Tests For Enclose
enclose_triangle_one_test() -> {rectangle,2.0453835214941964,8} = assignment:enclose({triangle, 8,4,5}).
enclose_triangle_two_test() -> {rectangle,2.0453835214941964,8} = assignment:enclose({triangle, 4, 8, 5}).
enclose_triangle_three_test() -> {rectangle,2.0453835214941964,8} = assignment:enclose({triangle, 4, 5, 8}).
enclose_circle_nil_test() -> {rectangle,13,13} = assignment:enclose({circle, 13}).

% Unit Tests For Bits

bits_tail_one_test() -> 4 = assignment:bits(29).