```dafny
method difference(n: int) returns (diff: int)
  requires n >= 1
  ensures diff == (n * (n + 1) / 2) * (2 * n + 1) / 3 - (n * (n + 1) / 2)
{
}
```