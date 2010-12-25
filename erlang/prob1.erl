-module(prob1).
-export([solve/1, add/1]).
-author("James North").

%%% Problem 1
%%%

solve(N) ->
    Solution = accumulate(createList(N, 1, [])),
    io:format("The solution is ~B~n", [Solution]).
    
createList(N, Cnt, List) when Cnt =< N ->
    createList(N, Cnt+1, lists:append(List, [Cnt]));
createList(N, Cnt, List) when Cnt > N ->
    List.

accumulate([Head | Rest]) ->
    if
        (Head rem 5 == 0) or (Head rem 3 == 0) ->
            Head + accumulate(Rest);
        true ->
            accumulate(Rest)
    end;
accumulate([]) ->
    0.
