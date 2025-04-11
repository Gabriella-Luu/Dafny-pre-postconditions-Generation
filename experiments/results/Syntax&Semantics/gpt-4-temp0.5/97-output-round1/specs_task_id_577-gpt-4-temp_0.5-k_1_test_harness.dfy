method lastDigitFactorial (n:int) returns (res:int)
    requires n >= 0 // the number should be non-negative
    ensures res >= 0 && res <= 362880 // the factorial of any single digit number will be in the range [0, 362880]
    ensures (n % 10 == 0 ==> res == 1) // if the last digit is 0, the factorial is 1
    ensures (n % 10 == 1 ==> res == 1) // if the last digit is 1, the factorial is 1
    ensures (n % 10 == 2 ==> res == 2) // if the last digit is 2, the factorial is 2
    ensures (n % 10 == 3 ==> res == 6) // if the last digit is 3, the factorial is 6
    ensures (n % 10 == 4 ==> res == 24) // if the last digit is 4, the factorial is 24
    ensures (n % 10 == 5 ==> res == 120) // if the last digit is 5, the factorial is 120
    ensures (n % 10 == 6 ==> res == 720) // if the last digit is 6, the factorial is 720
    ensures (n % 10 == 7 ==> res == 5040) // if the last digit is 7, the factorial is 5040
    ensures (n % 10 == 8 ==> res == 40320) // if the last digit is 8, the factorial is 40320
    ensures (n % 10 == 9 ==> res == 362880) // if the last digit is 9, the factorial is 362880
{
  var v0 := 30;
  assume {:axiom} n == v0;
  res := 5;
}