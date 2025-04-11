```dafny
method lastDigitFactorial(n: int) returns (res: int)
  requires n >= 0
  ensures res == Factorial(n % 10)
{
  // Implementation not provided
}

function Factorial(n: int): int
  requires n >= 0
  ensures n == 0 ==> Factorial(n) == 1
  ensures n > 0 ==> Factorial(n) == n * Factorial(n - 1)
{
  if n == 0 then 1 else n * Factorial(n - 1)
}
```