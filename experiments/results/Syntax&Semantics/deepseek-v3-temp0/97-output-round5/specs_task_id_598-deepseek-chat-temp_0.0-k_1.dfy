```dafny
method armstrongNumber(number: int) returns (res: bool)
  requires number >= 0
  ensures res == (number == SumOfDigitsRaisedToPower(number, CountDigits(number)))
{
  // Implementation not provided
}

// Helper functions to calculate the sum of digits raised to the power of the number of digits
function SumOfDigitsRaisedToPower(n: int, power: int): int
  requires n >= 0
  decreases n
{
  if n == 0 then 0
  else (n % 10) * Power(10, power - 1) + SumOfDigitsRaisedToPower(n / 10, power)
}

function CountDigits(n: int): int
  requires n >= 0
  decreases n
{
  if n == 0 then 0
  else 1 + CountDigits(n / 10)
}

function Power(base: int, exponent: int): int
  requires exponent >= 0
  decreases exponent
{
  if exponent == 0 then 1
  else base * Power(base, exponent - 1)
}
```