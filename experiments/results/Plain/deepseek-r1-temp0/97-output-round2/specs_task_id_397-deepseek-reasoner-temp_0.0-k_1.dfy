```dafny
method medianNumbers(a: int, b: int, c: int) returns (median: int)
  ensures median == a || median == b || median == c
  ensures (median >= a && median >= b) || (median >= a && median >= c) || (median >= b && median >= c)
  ensures (median <= a && median <= b) || (median <= a && median <= c) || (median <= b && median <= c)
{
  // Implementation not provided
}
```