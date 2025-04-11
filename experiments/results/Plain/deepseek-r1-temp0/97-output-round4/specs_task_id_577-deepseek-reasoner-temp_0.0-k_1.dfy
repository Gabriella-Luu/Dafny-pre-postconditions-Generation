```dafny
function factorial(x: int): int
  requires x >= 0
{
  if x == 0 then 1 else x * factorial(x - 1)
}

method lastDigitFactorial(n: int) returns (res: int)
  ensures res == factorial(abs(n) % 10)
{
  // Implementation code would go here, but is omitted for this example
}
```