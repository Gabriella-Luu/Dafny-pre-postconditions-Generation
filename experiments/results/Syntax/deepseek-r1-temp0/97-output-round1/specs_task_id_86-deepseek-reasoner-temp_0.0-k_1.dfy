```dafny
method centeredHexagonalNumber(n: int) returns (res: int)
  requires n >= 1
  ensures res == 3 * n * (n - 1) + 1
{
  // Implementation would compute 3n(n-1)+1 here
  // Example implementation: res := 3 * n * (n - 1) + 1;
}
```