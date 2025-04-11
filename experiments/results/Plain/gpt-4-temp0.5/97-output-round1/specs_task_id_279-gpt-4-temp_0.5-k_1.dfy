```dafny
method isNumDecagonal(n: int) returns (res: int)
  requires n >= 1 // The input number should be a positive integer
  ensures res == 4*n*n - 3*n // The nth decagonal number is given by the formula 4n^2 - 3n
  {}
```