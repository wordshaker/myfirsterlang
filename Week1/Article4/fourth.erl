-module(fourth).
-export([fib/1]).

%Recursive function to calculate Fibonacci numbers
fib(0) ->
0;
fib(1) -> 
1;
fib(Number) when N>1 ->
 fib(Number -1) + fib(Number -2).
