```dafny
method LastDigit(n: int) returns (d: int)
  requires n >= 0 // The number should be non-negative
  ensures 0 <= d && d <= 9 // The last digit of a number is always between 0 and 9
  ensures d == n mod 10 // The last digit of a number is equal to the number modulo 10
```
This precondition and postconditions are designed based on the assumption that the input number is non-negative. If the input number can be negative, the requirements would need to be adjusted accordingly.