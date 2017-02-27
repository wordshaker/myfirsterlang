-module(fourth).
-export([fib/1]).

fib(0) ->
0;
fib(1) -> 
1;
fib(Number) ->
 fib(Number -1) + fib(Number -2).