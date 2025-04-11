```dafny
method medianNumbers(a: int, b: int, c: int) returns (median: int)
  ensures median == a + b + c - min(a, min(b, c)) - max(a, max(b, c))
{
  // Dafny method without implementation
}
```