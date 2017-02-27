-module(tailrecursion).
-export([fib/1, perfect/1]).


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
    
% Perfect Numbers
% Smallest perfect number is 6 so anything less == false
% Work out total of numbers which are a modulo of given number. Half this. If equal to starting number its perfect.
% https://en.wikipedia.org/wiki/Perfect_number
% N  T  C
% 6, 0, 6 => 
% 6, 6, 5 =>
% 6, 6, 4 =>
% 6, 6, 3 =>
% 6, 9, 2 =>
% 6, 11,1 =>
% 6, 12, 0 == true!

perfect(Number) ->
    perfect(Number,0,Number).

perfect(Number,_,_) when Number<=5 ->
    false;
perfect(Number,Total,Count) when Count==0 ->
    Total/2 == Number;
perfect(Number,Total,Count) when Number rem Count>0->
    perfect(Number, Total, Count -1);
perfect(Number,Total,Count) when Number rem Count==0->
    perfect(Number, Total + Count, Count -1).