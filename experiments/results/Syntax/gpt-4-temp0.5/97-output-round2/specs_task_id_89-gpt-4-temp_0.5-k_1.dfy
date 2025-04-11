```dafny
method closestNum(n:int) returns (res:int)
  requires n > int.MinValue
  ensures res == n - 1
```