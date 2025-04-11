```dafny
method dogAge(hAge:int) returns (res:int)
    requires hAge >= 0
    ensures res == hAge * 7
```