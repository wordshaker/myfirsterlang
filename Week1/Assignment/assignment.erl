-module(assignment).
-export([perimeter/1,area/1,enclose/1]).
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

%% Areas of the triangle's
% http://www.mathopenref.com/heronsformula.html

% First, right angled triangle with all 3 sides known
area({rightangledtriangle, Side1, Side2, Side3}) ->
    HP = perimeter({rightangledtriangle, Side1, Side2}) /2,
    math:sqrt(HP*(HP-Side1)*(HP-Side2)*(HP-Side3));
% Second, right angled triangle with only 2 sides known
area({rightangledtriangle, Side1, Side2}) ->
    Side3 = second:hypothenuse(Side1, Side2),
    HP = perimeter({rightangledtriangle, Side1, Side2}) /2,
    math:sqrt(HP*(HP-Side1)*(HP-Side2)*(HP-Side3));
% Third, a generic triangle with all 3 sides known
area({triangle, Side1, Side2, Side3}) ->
    HP = perimeter({triangle, Side1, Side2, Side3}) /2,
    math:sqrt(HP*(HP-Side1)*(HP-Side2)*(HP-Side3));

% Areas of the remaining shapes
area({square, Side}) ->
    Side*Side;
area({rectangle, Width, Height}) ->
    Width * Height;
area({circle, Diameter}) ->
    A =math:pi()*(Diameter/2),
    A*A.

% Enclose

%find the hieght of a triangle
enclose({triangle, Side1, Side2, Side3}) when Side1 > Side2, Side3->
    Height = ((area({triangle,Side1,Side2,Side3}))/Side1)*2,
    {rectangle, Height, Side1};
enclose({triangle, Side1, Side2, Side3}) when Side2 > Side1, Side3->
    Height = ((area({triangle,Side1,Side2,Side3}))/Side1)*2,
    {rectangle, Height, Side1};
enclose({triangle, Side1, Side2, Side3}) when Side3 > Side2, Side1->
    Height = ((area({triangle,Side1,Side2,Side3}))/Side1)*2,
    {rectangle, Height, Side1};
enclose({triangle, Side1, Side2, Side3}) ->
    Height = ((area({triangle,Side1,Side2,Side3}))/Side1)*2,
    {rectangle, Height, Side1}.