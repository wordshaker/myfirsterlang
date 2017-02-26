-module(maximum).
-export([maxThree/3]).


maxThree(F, S, T) ->
     erlang:max(erlang:max(F,S), T).