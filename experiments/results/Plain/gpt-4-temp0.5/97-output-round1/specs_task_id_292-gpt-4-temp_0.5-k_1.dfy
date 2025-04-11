```dafny
method findQuotient(a: int, b: int) returns (res: int)
    requires b != 0 // The divisor cannot be zero
    ensures b * res <= a && a < b * (res + 1) // The result is the largest integer such that b * res is less than or equal to a
```