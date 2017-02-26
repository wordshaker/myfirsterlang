# Data Types in Erlang


``` 
not true.
```
false
 
```
true and false.
```

false

``` 
length([2,3,4,5]).
```

4

``` 
[2,3]++[[4]].
```

[2,3,[4]]

```
(fun (X) -> X+2 end)(40).
```

42

```
fun (X) -> X+2 end(40).
```

42

```
2#100.
```

4

```
100#2.
```
1: illegal base '100'

```
34#2.
```
2

```
2#34.
```

1:illegal integer

```
[97,98,99].
```
"abc"

```
[$h,$e,$l,$l,$o].
```
"hello"

```
[34,3,5,36,37].
```
[34,3,5,36,37]

```
[34,35,36,37].
```
"\"#$%"

``` 
false and (3 == (4 div 0)).
```
exception error: an error occurred when evaluating an arithmetic expression
     in operator  div/2
        called as 4 div 0

``` 
false andalso (3 == (4 div 0)).
```
false

```
true orelse (3 == (4 div 0)). 
``` 
true
