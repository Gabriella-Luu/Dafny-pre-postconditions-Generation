```dafny
method findQuotient(a: int, b: int) returns (res: int)
  requires b != 0
  ensures res * b <= a && a < (res + 1) * b
{
  // Implementation not provided
}
```