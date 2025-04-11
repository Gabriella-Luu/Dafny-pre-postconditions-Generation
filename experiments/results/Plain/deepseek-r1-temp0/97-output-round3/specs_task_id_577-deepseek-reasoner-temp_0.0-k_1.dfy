```dafny
method lastDigitFactorial(n: int) returns (res: int)
  ensures res == match abs(n) % 10 {
    0 => 1,
    1 => 1,
    2 => 2,
    3 => 6,
    4 => 24,
    5 => 120,
    6 => 720,
    7 => 5040,
    8 => 40320,
    9 => 362880,
    _ => 1
  }
{
  // Implementation not provided
}
```