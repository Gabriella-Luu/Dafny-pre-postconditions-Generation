```dafny
method findQuotient(a:int, b:int) returns (res:int)
    requires b != 0
    ensures b * res <= a < b * (res + 1)
```