```dafny
function factorial(x: int): int
  requires 0 <= x <= 9
{
  if x == 0 then 1 else x * factorial(x - 1)
}

method lastDigitFactorial(n: int) returns (res: int)
  ensures res == factorial(n.Abs() % 10)
{
  // Dafny method without implementation
}
```