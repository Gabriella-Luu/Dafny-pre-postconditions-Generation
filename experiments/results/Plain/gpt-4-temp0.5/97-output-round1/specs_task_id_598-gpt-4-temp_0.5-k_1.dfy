```dafny
method armstrongNumber(number: int) returns (res: bool)
  requires number >= 0 // A number must be non-negative to be an Armstrong number
  ensures res == (number == (number.ToString().ToArray().Map(n => (n - '0').Pow(number.ToString().Length())).Sum())) // An Armstrong number is a number that is the sum of its own digits each raised to the power of the number of digits.
```