-module(second).
-export([hypothenuse/2]).

% The Pythagorean theory states the square of the length of the Hypotenuse
% equals the sum of the squares of the other two sides.
%https://en.wikipedia.org/wiki/Hypotenuse

hypothenuse(W,H) ->
    math:sqrt(first:square(W) + first:square(H)).