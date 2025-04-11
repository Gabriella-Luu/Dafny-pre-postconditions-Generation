```dafny
method lastDigitFactorial(n: int) returns (res: int)
  ensures ((if n >= 0 then n else -n) % 10 == 0 ==> res == 1) &&
          ((if n >= 0 then n else -n) % 10 == 1 ==> res == 1) &&
          ((if n >= 0 then n else -n) % 10 == 2 ==> res == 2) &&
          ((if n >= 0 then n else -n) % 10 == 3 ==> res == 6) &&
          ((if n >= 0 then n else -n) % 10 == 4 ==> res == 24) &&
          ((if n >= 0 then n else -n) % 10 == 5 ==> res == 120) &&
          ((if n >= 0 then n else -n) % 10 == 6 ==> res == 720) &&
          ((if n >= 0 then n else -n) % 10 == 7 ==> res == 5040) &&
          ((if n >= 0 then n else -n) % 10 == 8 ==> res == 40320) &&
          ((if n >= 0 then n else -n) % 10 == 9 ==> res == 362880)
{
  // Implementation logic would go here
}
```