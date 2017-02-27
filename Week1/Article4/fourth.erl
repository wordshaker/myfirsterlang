-module(fourth).
-export([fib/1,pieces/1,cubePieces/1, dimensionPieces/2]).

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

% How many pieces? 3D
cubePieces(0) ->
    1;
cubePieces(N) when N>0 ->
    cubePieces(N - 1) + pieces(N - 1).

% How many pieces? anyD
dimensionPieces(_,0) ->
    1;
dimensionPieces(Dimensions,Slices) when Dimensions==2 ->
    pieces(Slices);
dimensionPieces(Dimensions,Slices) when Slices>0 ->
    dimensionPieces(Dimensions, Slices - 1) + dimensionPieces(Dimensions - 1 ,Slices - 1).