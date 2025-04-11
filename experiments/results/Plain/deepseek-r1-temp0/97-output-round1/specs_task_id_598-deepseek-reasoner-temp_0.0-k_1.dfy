```dafny
method armstrongNumber(number: int) returns (res: bool)
  requires number >= 0
  ensures res == (number == (if number == 0 then 0 else (
    (number % 10) * (number % 10) * (number % 10) /* ... pow=digits count */ + 
    ((number / 10) % 10) * ((number / 10) % 10) * ((number / 10) % 10) + 
    ... /* All digits raised to appropriate power */ )))
{
  // Method implementation would calculate digit count and sum here
}
```