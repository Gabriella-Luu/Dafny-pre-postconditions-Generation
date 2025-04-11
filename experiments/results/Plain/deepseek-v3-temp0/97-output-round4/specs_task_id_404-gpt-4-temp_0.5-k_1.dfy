```dafny
method Min(a: int, b: int) returns (minValue: int)
  ensures minValue <= a && minValue <= b && (minValue == a || minValue == b)
```