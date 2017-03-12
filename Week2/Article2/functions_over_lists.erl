-module(functions_over_lists).
-export([product/1]).

product([]) ->
    1;
product([Number|Numbers]) -> 
    Number * product(Numbers). 

% The product of an empty list is 1 because the empty list is 1
% https://en.wikipedia.org/wiki/Empty_product
