```dafny
method hexagonalNum(n:int) returns (res:int)
  requires n >= 1
  ensures res == n * (2 * n - 1)
```