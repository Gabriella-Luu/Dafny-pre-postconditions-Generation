```dafny
method LastDigit(n: int) returns (d: int)
    requires n >= 0 // n should be a non-negative integer
    ensures 0 <= d < 10 // d should be a single digit number
    ensures d == n % 10 // d should be the last digit of n
```