-module(functions_over_lists).
-export([product_direct/1,product_tail/1,maximum_tail/1,maximum_direct/1]).

% The product of an empty list is 1 because the empty list is 1
% https://en.wikipedia.org/wiki/Empty_product

product_direct([]) ->
    1;
product_direct([Number|Numbers]) -> 
    Number * product_direct(Numbers). 

product_tail([]) ->
    1;
product_tail([Number|Numbers]) -> 
    product_tail([Number|Numbers], 1).  

product_tail([Number|[]], Accumulator) -> 
    Number*Accumulator;   
product_tail([Number|Numbers], Accumulator) -> 
    product_tail(Numbers, Number*Accumulator). 

% For maximum I returned "NA" as you can't have a maximum of an empty list. 
 
maximum_tail([]) ->
    "NA";
maximum_tail([Number|Numbers]) ->
    maximum_tail([Number|Numbers], Number).

maximum_tail([], Maximum) ->
    Maximum;
maximum_tail([Number|Numbers], Maximum) ->
    maximum_tail(Numbers, erlang:max(Number, Maximum)).

maximum_direct([]) ->
    "NA";
maximum_direct([Number|[]]) -> 
    Number;
maximum_direct([X|Xs]) ->	
    max(X, maximum_direct(Xs)).

% Personally I get on best with tail recursion.