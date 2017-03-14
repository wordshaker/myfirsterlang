-module(constructing_lists).
-export([double_direct/1,evens/1,median/1]).

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

% median 
median(Numbers) ->
    OrderedList = lists:sort(Numbers),
    Length = lists:flatlength(OrderedList),
    Middle = Length div 2  + 1,
    case Length rem 2 of 0 ->
        (lists:nth(Middle,OrderedList) + lists:nth(Middle + 1, OrderedList)) /2;
    _ ->
        lists:nth(Middle, OrderedList)
    end.