-module(third).
-export([xOr1/2,xOr2/2,maxThree/3,howManyEqual/3]).

% XOR

xOr1(X,Y) ->
    X=/=Y.

% Works out the maximum value of three integers.
% Could assign the M = erlang:max(F,S) to a variable but I prefer this
maxThree(F, S, T) ->
    erlang:max(erlang:max(F,S), T).

% Works out how many of three integers have the same value using pattern matching.
% I do think this could be shortened with an XOr between checks?
howManyEqual(X, X, X) ->
3;
howManyEqual(X, X, _) ->
2;
howManyEqual(X, _, X) ->
2;
howManyEqual(_, X, X) ->
2;
howManyEqual(_, _, _) ->
0.

    
