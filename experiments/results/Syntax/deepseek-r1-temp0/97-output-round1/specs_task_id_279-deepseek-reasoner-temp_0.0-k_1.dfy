```dafny
method isNumDecagonal(n: int) returns (res: int)
  requires n >= 1
  ensures res == n * (4 * n - 3)
```