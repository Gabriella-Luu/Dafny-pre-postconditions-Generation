```dafny
method LastDigit(n: int) returns (d: int)
  requires n >= 0 // n should be non-negative as negative numbers do not have a last digit
  ensures d >= 0 && d <= 9 // the last digit of a number is always between 0 and 9
  ensures n % 10 == d // the last digit of a number is the remainder when the number is divided by 10
```