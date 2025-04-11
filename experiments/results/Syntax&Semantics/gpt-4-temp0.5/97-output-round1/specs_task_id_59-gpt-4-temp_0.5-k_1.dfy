```dafny
method isOctagonal(n: int) returns (res: int)
  requires n > 0
  ensures res >= 0
  ensures (res == n * (3 * n - 2)) && (res > 0)
```