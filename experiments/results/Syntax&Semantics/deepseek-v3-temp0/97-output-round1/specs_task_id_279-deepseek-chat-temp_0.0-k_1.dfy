```dafny
// Dafny method without implementation
method isNumDecagonal(n: int) returns (res: int)
  requires n >= 0
  ensures res == n * (4 * n - 3)
{
  // Implementation would go here
}
```