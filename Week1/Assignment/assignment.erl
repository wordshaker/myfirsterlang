-module(assignment).
-export([perimeter/1]).
-include_lib("eunit/include/eunit.hrl").

%% perimeter takes a shape & returns the perimeter of the shape
% I started with a square as the four sides are the same size it seemed the easiest shape.
% I then followed this with a rectangle, then a triangle where you knew all sides size and 
% then reused a the hypothenuse function from an earlier exerice to calculate the longest
% side from the other twos. Finally, the perimeter of a circle was calculated.

perimeter({square, Side}) ->
    Side*4;
perimeter({rectangle, Width, Height}) ->
2*(Width + Height);
perimeter({triangle, Side1, Side2, Side3}) ->
    Side1 + Side2 + Side3;
perimeter({rightangledtriangle, Side1, Side2}) ->
    second:hypothenuse(Side1, Side2) + Side1 + Side2;
perimeter({circle, Diameter}) ->
    math:pi()*Diameter.

