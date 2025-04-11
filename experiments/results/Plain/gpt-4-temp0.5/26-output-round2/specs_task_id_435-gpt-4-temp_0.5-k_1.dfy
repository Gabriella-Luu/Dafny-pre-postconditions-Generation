```dafny
method LastDigit(n: int) returns (d: int)
  requires n >= 0 // The input number must be a non-negative integer
  ensures 0 <= d && d <= 9 // The output digit will always be between 0 and 9 (inclusive)
  ensures d == n mod 10 // The output digit is the last digit of the input number
{
  // Method implementation goes here
}
```