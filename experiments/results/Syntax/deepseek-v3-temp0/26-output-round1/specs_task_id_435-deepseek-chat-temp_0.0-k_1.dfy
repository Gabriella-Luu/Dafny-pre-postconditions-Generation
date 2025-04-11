```dafny
method LastDigit(n: int) returns (d: int)
  ensures d == (n % 10) || (n == 0 && d == 0)
{
  // Implementation not provided
}
```