```dafny
method findQuotient(a:int, b:int) returns (res:int)
    requires b != 0 // divisor should not be zero
    ensures res * b <= a && a < (res + 1) * b // quotient is rounded down to the nearest integer
```