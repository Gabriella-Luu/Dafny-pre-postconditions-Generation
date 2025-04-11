```dafny
method LastDigit(n: int) returns (d: int)
  requires n >= 0; // The input number must be non-negative
  ensures 0 <= d && d <= 9; // The output must be a single digit number
  ensures d == n mod 10; // The output must be the last digit of the input number
```