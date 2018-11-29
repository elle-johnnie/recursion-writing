# Supplemental Recursion Problems

## `count8(num)` method
Given a non-negative int n, compute recursively (no loops) the count of the occurrences of 8 as a digit, except that an 8 with another 8 immediately to its left counts double, so 8818 yields 4. Note that mod (%) by 10 yields the rightmost digit (126 % 10 is 6), while divide (/) by 10 removes the rightmost digit (126 / 10 is 12).

-  count8(8) → 1
-  count8(818) → 2
-  count8(8818) → 4

## `count_hi(input)` method

Given a string, compute recursively (no loops) the number of times lowercase "hi" appears in the string.

-  countHi("xxhixx") → 1
-  countHi("xhixhix") → 2
-  countHi("hi") → 1

## `change_pi` method

Given a string, compute recursively (no loops) a new string where all appearances of "pi" have been replaced by "3.14".

-  changePi("xpix") → "x3.14x"
-  changePi("pipi") → "3.143.14"
-  changePi("pip") → "3.14p"

## `triangle` method

We have triangle made of blocks. The topmost row has 1 block, the next row down has 2 blocks, the next row has 3 blocks, and so on. Compute recursively (no loops or multiplication) the total number of blocks in such a triangle with the given number of rows.

-  triangle(0) → 0
-  triangle(1) → 1
-  triangle(2) → 3

Example:

triangle(1)

```bash
*
```

triangle(3)

```bash
*
**
***
```
