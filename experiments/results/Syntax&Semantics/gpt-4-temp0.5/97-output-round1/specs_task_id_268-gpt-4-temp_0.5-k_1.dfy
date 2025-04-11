```dafny
method findStarNum(n:int) returns (res:int)
    requires n > 0
    ensures res == 6*n*(n-1) + 1
```