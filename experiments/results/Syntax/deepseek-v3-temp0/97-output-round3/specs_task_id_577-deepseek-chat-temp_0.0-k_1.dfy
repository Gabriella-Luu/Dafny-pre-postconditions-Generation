```dafny
method lastDigitFactorial(n: int) returns (res: int)
  requires n >= 0
  ensures res == (if n % 10 == 0 then 1 else (n % 10) * (if n % 10 - 1 == 0 then 1 else (n % 10 - 1) * (if n % 10 - 2 == 0 then 1 else (n % 10 - 2) * (if n % 10 - 3 == 0 then 1 else (n % 10 - 3) * (if n % 10 - 4 == 0 then 1 else (n % 10 - 4) * (if n % 10 - 5 == 0 then 1 else (n % 10 - 5) * (if n % 10 - 6 == 0 then 1 else (n % 10 - 6) * (if n % 10 - 7 == 0 then 1 else (n % 10 - 7) * (if n % 10 - 8 == 0 then 1 else (n % 10 - 8) * (if n % 10 - 9 == 0 then 1 else (n % 10 - 9)))))))))
{
  // Implementation not provided
}
```