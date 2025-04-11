```dafny
method isNumDecagonal(n:int) returns (res:int)
    requires n >= 1  // n should be a positive integer
    ensures res == 4*n*n - 3*n  // the nth decagonal number is given by the formula 4n^2 - 3n
```