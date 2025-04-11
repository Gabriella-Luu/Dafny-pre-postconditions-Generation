```dafny
method lastDigitFactorial(n:int) returns (res:int)
  ensures res == factorial(abs(n) % 10)
{
  // Implementation not provided
}

function factorial(d: int): int
  requires 0 <= d <= 9
{
  if d == 0 then 1
  else d * factorial(d - 1)
}
```