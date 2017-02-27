-module(fourth).
-export([fib/1,pieces/1]).

% Recursive function to calculate Fibonacci numbers
fib(0) ->
0;
fib(1) -> 
1;
fib(Number) when Number>1 ->
 fib(Number -1) + fib(Number -2).

% How many pieces? -  tells you the maximum number of pieces into which you can cut a piece of paper with N straight line cuts.
% http://mathworld.wolfram.com/CircleDivisionbyLines.html
pieces(0) ->
    1;
pieces(N) when N>0 ->
pieces(N - 1) + N.

