```dafny
method maximum(a: int, b: int) returns (max: int)
  ensures max == a || max == b
  ensures max >= a && max >= b
{
  // Implementation not provided
}
```