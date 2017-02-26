-module(second).
-export([hypothenuse/2,perimeter/2,area/2]).

% The Pythagorean theory states the square of the length of the Hypotenuse
% equals the sum of the squares of the other two sides.

hypothenuse(W,H) ->
    math:sqrt(first:square(W) + first:square(H)).

% The Perimeter of a right angled triangle.

perimeter(W,H) ->
second:hypothenuse(W,H)+W+H.

% Area of a right angled triangle

area(W,H) ->
    (W*H)/2.