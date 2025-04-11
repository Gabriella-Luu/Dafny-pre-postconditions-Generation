```dafny
method lastDigitFactorial(n: int) returns (res: int)
    requires n >= 0 // The input number must be non-negative
    ensures res >= 0 // The result must be non-negative
    ensures res == 1 || res == 1*2 || res == 1*2*3 || res == 1*2*3*4 || res == 1*2*3*4*5 || res == 1*2*3*4*5*6 || res == 1*2*3*4*5*6*7 || res == 1*2*3*4*5*6*7*8 || res == 1*2*3*4*5*6*7*8*9 // The result must be the factorial of the last digit of n
{
    // Method implementation goes here
}
```