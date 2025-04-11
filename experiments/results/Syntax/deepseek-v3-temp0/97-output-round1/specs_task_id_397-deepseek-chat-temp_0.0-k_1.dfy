```dafny
method medianNumbers(a: int, b: int, c: int) returns (median: int)
  ensures (median == a || median == b || median == c)
  ensures (a <= b && b <= c) ==> median == b
  ensures (a <= c && c <= b) ==> median == c
  ensures (b <= a && a <= c) ==> median == a
  ensures (b <= c && c <= a) ==> median == c
  ensures (c <= a && a <= b) ==> median == a
  ensures (c <= b && b <= a) ==> median == b
{
  // Implementation not provided
}
```