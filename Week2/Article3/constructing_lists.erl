-module(constructing_lists).
-export([double_direct/1,evens/1]).

% Doubles all the numbers in a list
double_direct([]) ->
    [];
double_direct([Number|Numbers]) -> 
[Number*2|double_direct(Numbers)].


% Removes odd numbers from a list
evens([]) ->
    [];
evens([Number|Numbers]) when Number rem 2 == 0 ->
    [Number|evens(Numbers)];
evens([_Number|Numbers]) ->
    evens(Numbers).