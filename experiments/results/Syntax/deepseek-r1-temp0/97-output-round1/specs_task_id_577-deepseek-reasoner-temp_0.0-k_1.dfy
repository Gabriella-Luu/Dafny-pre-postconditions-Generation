```dafny
method lastDigitFactorial(n:int) returns (res:int)
  requires n >= 0
  ensures (n%10 == 0 ==> res == 1)
  ensures (n%10 == 1 ==> res == 1)
  ensures (n%10 == 2 ==> res == 2)
  ensures (n%10 == 3 ==> res == 6)
  ensures (n%10 == 4 ==> res == 24)
  ensures (n%10 == 5 ==> res == 120)
  ensures (n%10 == 6 ==> res == 720)
  ensures (n%10 == 7 ==> res == 5040)
  ensures (n%10 == 8 ==> res == 40320)
  ensures (n%10 == 9 ==> res == 362880)
{
  // Implementation not shown
}
```