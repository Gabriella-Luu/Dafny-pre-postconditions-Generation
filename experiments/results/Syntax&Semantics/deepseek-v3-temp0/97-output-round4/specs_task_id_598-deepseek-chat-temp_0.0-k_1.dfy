```dafny
method armstrongNumber(number: int) returns (res: bool)
  requires number >= 0
  ensures res == (number == PowerSum(number, NumDigits(number)))
{
  // Implementation not provided
}

// Helper function to calculate the number of digits in a number
function NumDigits(n: int): int
  requires n >= 0
  ensures n == 0 ==> NumDigits(n) == 1
  ensures n > 0 ==> NumDigits(n) == (if n < 10 then 1 else 1 + NumDigits(n / 10))
{
  if n == 0 then 1
  else if n < 10 then 1
  else 1 + NumDigits(n / 10)
}

// Helper function to calculate the sum of digits raised to the power of the number of digits
function PowerSum(n: int, numDigits: int): int
  requires n >= 0 && numDigits >= 1
  ensures PowerSum(n, numDigits) == (if n == 0 then 0 else Power(n % 10, numDigits) + PowerSum(n / 10, numDigits))
{
  if n == 0 then 0
  else Power(n % 10, numDigits) + PowerSum(n / 10, numDigits)
}

// Helper function to calculate the power of a number
function Power(base: int, exponent: int): int
  requires exponent >= 0
  ensures exponent == 0 ==> Power(base, exponent) == 1
  ensures exponent > 0 ==> Power(base, exponent) == base * Power(base, exponent - 1)
{
  if exponent == 0 then 1
  else base * Power(base, exponent - 1)
}
```