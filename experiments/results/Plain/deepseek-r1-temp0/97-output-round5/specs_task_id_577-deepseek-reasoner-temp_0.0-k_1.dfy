```dafny
method lastDigitFactorial(n:int) returns (res:int)
  ensures (abs(n) % 10 == 0 ==> res == 1) &&
          (abs(n) % 10 == 1 ==> res == 1) &&
          (abs(n) % 10 == 2 ==> res == 2) &&
          (abs(n) % 10 == 3 ==> res == 6) &&
          (abs(n) % 10 == 4 ==> res == 24) &&
          (abs(n) % 10 == 5 ==> res == 120) &&
          (abs(n) % 10 == 6 ==> res == 720) &&
          (abs(n) % 10 == 7 ==> res == 5040) &&
          (abs(n) % 10 == 8 ==> res == 40320) &&
          (abs(n) % 10 == 9 ==> res == 362880)
```