-module(third).
-export([maxThree/3]).

% Works out the maximum value of three integers
maxThree(F, S, T) ->
     erlang:max(erlang:max(F,S), T).
