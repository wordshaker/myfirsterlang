#1
```
case [2,3,4] of
 [X,Y|_] -> X+Y;
 [S] -> S;
 _ -> 0
end.
```

#### Result: 5

#2
```
case [6] of
 [X,Y|_] -> X+Y;
 [S] -> S;
 _ -> 0
end.
```

#### Result: 6

#3
```
case [] of
 [X,Y|_] -> X+Y;
 [S] -> S;
 _ -> 0
end. 
```

#### Result: 0