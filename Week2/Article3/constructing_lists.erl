-module(constructing_lists).
-export([double_direct/1]).

double_direct([]) ->
    [];
double_direct([Number|Numbers]) -> 
    [Number*2|double_direct(Numbers)].