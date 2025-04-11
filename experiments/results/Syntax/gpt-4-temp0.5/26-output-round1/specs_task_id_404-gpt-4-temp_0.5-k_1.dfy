```dafny
method Min(a: int, b: int) returns (minValue: int)
    requires true
    ensures (minValue == a && minValue <= b) || (minValue == b && minValue <= a)
```