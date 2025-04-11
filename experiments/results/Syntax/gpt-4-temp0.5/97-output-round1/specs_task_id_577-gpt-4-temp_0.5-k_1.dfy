```dafny
method lastDigitFactorial(n:int) returns (res:int)
    requires n >= 0
    ensures 0 <= res <= 362880 // Factorial of 9 (maximum possible last digit) is 362880
    ensures (n % 10 == 0 ==> res == 1) // Factorial of 0 is 1
    ensures (n % 10 == 1 ==> res == 1) // Factorial of 1 is 1
    ensures (n % 10 == 2 ==> res == 2) // Factorial of 2 is 2
    ensures (n % 10 == 3 ==> res == 6) // Factorial of 3 is 6
    ensures (n % 10 == 4 ==> res == 24) // Factorial of 4 is 24
    ensures (n % 10 == 5 ==> res == 120) // Factorial of 5 is 120
    ensures (n % 10 == 6 ==> res == 720) // Factorial of 6 is 720
    ensures (n % 10 == 7 ==> res == 5040) // Factorial of 7 is 5040
    ensures (n % 10 == 8 ==> res == 40320) // Factorial of 8 is 40320
    ensures (n % 10 == 9 ==> res == 362880) // Factorial of 9 is 362880
{
    // Method implementation goes here
}
```