```dafny
method LastDigit(n: int) returns (d: int)
   ensures 0 <= d < 10;
   ensures d == abs(n) % 10;
{
   // Implementation not provided
}
```