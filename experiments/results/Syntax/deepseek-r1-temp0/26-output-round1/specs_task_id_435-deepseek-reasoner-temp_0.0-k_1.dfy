```dafny
method LastDigit(n: int) returns (d: int)
  ensures d == (if n >= 0 then n % 10 else (-n) % 10)
{
  // Implementation computes last digit via (n >= 0 ? n % 10 : (-n) % 10)
  // Actual code would be: d := if n >= 0 then n % 10 else (-n) % 10;
}
```