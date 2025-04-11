```dafny
method triangleArea(r:int) returns (res:int)
    requires r > 0
    ensures res == r*r
```