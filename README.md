# My First Erlang

This repo has my work for the [Future Learn Functional Programming Erlang Course](https://www.futurelearn.com/courses/functional-programming-erlang).
It includes ungraded 'articles' and graded assignments and is organised by week.

I used Erlang 19.2 when running these functions.

## [Week 1](https://github.com/wordshaker/myfirsterlang/tree/master/Week1)

#### [Article1](https://github.com/wordshaker/myfirsterlang/tree/master/Week1/Article1) - My First Erlang Program

Includes functions for:
* Squaring a value.
* Trebling a value.
* Calculating the size of a hypthenuse of a right angled triangle give the lengths of the two other sides.
* The perimeter of a right-angled triangle, given the lengths of the two short sides.
* The area of a right-angled triangle, given the lengths of the two short sides.

#### [Article2](https://github.com/wordshaker/myfirsterlang/tree/master/Week1/Article2) - Erlang data in practice

Involved evaluating Erlang expressions and testing them in the Erlang shell.

##### [Article3](https://github.com/wordshaker/myfirsterlang/tree/master/Week1/Article3) - Variables and patterns in practice

Included:
* Giving three ways of defining exclusive or (XOR).
* Giving a definition of the function maxThree which takes three integers and returns the maximum of the three.
* Giving a definition of the function howManyEqual which takes three integers and returns an integer, counting how many of its three arguments are equal.

##### [Article4](https://github.com/wordshaker/myfirsterlang/tree/master/Week1/Article4) - Direct Recursion

This was the first lesson into direct recursion. To practise this functions were written to do the following:
* Calculating a number in the Fibonacci Sequence based on its position
* Given a 2D shape, the number of pieces that could be created for a given number of straight line slices.
* Given a 3D shape, the number of pieces that could be created for a given number of straight line slices.
* Given a number of dimensions and a number of slices, the maximum number of pieces that can be produced.

For the second and third functions [this site](http://mathworld.wolfram.com/CircleDivisionbyLines.html) was used for reference.

##### [TailRecursion](https://github.com/wordshaker/myfirsterlang/tree/master/Week1/TailRecursion) - Head Tail Recursion

This was the first lesson using Tail Recursion. To practice, the following problems were solved:
* Calculating a number in the Fibonacci Sequence based on its position. Workings out are written as comments in the code.
* Calculating if a number was a perfect number [The calculation on this page](https://en.wikipedia.org/wiki/Perfect_number) was 
used as an aid for writing the code. The example of a step by step of how the recursion would work is below.

``` 
 N  T  C
 6, 0, 6 => 
 6, 6, 5 =>
 6, 6, 4 =>
 6, 6, 3 =>
 6, 9, 2 =>
 6, 11,1 =>
 6, 12, 0 == true!
``` 

Comments in the code further explain this.
