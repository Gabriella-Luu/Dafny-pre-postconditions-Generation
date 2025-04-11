```dafny
method leftRotate(n: bv32, d: int) returns (r: bv32)
  requires 0 <= d < 32
  ensures r == ((n << d) | (n >> (32 - d)))
{
  // Implementation not provided
}
```