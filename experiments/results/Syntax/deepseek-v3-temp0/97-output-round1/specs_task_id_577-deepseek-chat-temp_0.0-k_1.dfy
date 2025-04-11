```dafny
method lastDigitFactorial(n: int) returns (res: int)
  requires n >= 0
  ensures res == (if n % 10 == 0 then 1 else (1 * 2 * 3 * ... * (n % 10)))
{
  // Implementation not provided
}
```