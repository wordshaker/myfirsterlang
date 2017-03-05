-module(assignment).
-export([perimeter/1,area/1,enclose/1,bits/1]).

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

% Enclose for a triangle
enclose({triangle, Side1, Side2, Side3}) when Side1 > Side2, Side1 > Side3->
    Height = ((area({triangle,Side1,Side2,Side3}))/Side1)*2,
    {rectangle, Height, Side1};
enclose({triangle, Side1, Side2, Side3}) when Side2 > Side1, Side2 > Side3->
    Height = ((area({triangle,Side1,Side2,Side3}))/Side2)*2,
    {rectangle, Height, Side2};
enclose({triangle, Side1, Side2, Side3}) when Side3 > Side2, Side3 > Side1->
    Height = ((area({triangle,Side1,Side2,Side3}))/Side3)*2,
    {rectangle, Height, Side3};
enclose({triangle, Side1, Side2, Side3}) ->
    Height = ((area({triangle,Side1,Side2,Side3}))/Side1)*2,
    {rectangle, Height, Side1};

% Enclose for a right angled triangle wasn't done as it's a rectangle with the same height 
% and width of the  triangle. Square and rectangle, again involve no calculation as the 
% enclosing rectangle would be the same size. 

% Enclose for a Circle 
enclose({circle, Diameter}) ->
    {rectangle, Diameter, Diameter}.

% bits -  takes a positive integer N and returns the sum of the bits in the binary representation
% A positive integer n has b bits 2b-1 ≤ n ≤ 2b – 1.
% http://www.exploringbinary.com/number-of-bits-in-a-decimal-integer/

% number, divided by 2, grab the remainder, flip em

bits(Number) when Number>0->
bits(Number, 0).

bits(0, SumOfBits)->
     SumOfBits;
bits(Number, SumOfBits) ->
     bits(Number div 2, SumOfBits+(Number rem 2)). 