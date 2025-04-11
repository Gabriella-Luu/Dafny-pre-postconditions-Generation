```dafny
method LastDigit(n: int) returns (d: int)
  ensures d == (if n >= 0 then (n % 10) else ((-n) % 10))
{
  // Implementation not shown
}
```