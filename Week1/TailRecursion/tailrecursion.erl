-module(tailrecursion).
-export([fib/1]).


% Using Head Tail Recursion to find out the number of a number in the Fibonnaci Sequence based on 
% position. Below is a manual working out of how it works for the fourth number in the sequence.

% fib(4) = 3
% fib(4,0,1) => fib(4-1, 1, 0+1) => fib(3-1, 1, 1 + 1) => 1 + 2 = 3 
% fib(4,0,1) => fib(3, 1, 1) => fib(2, 1, 2) => 1 + 2 = 3 
% fib(P,H,T) because P > 2 => fib(P,H,T) because P > 2 => H+T because P=<2

fib(Position) ->
    fib(Position, 0, 1).

fib(0,_,_) ->
    0;
fib(Position,Head,Tail) when Position<3 ->
    Head + Tail;
fib(Position,Head,Tail) ->
    fib(Position - 1, Tail, Head + Tail).
    
