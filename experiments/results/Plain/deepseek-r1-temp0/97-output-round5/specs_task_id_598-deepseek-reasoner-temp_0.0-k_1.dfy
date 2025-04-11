```dafny
function numDigits(n: int): int
  requires n >= 0
  decreases n
{
  if n < 10 then 1 else 1 + numDigits(n / 10)
}

function pow(a: int, b: int): int
  requires b >= 0
  decreases b
{
  if b == 0 then 1 else a * pow(a, b - 1)
}

function sumOfDigitsRaised(n: int, k: int): int
  requires n >= 0
  decreases n
{
  if n == 0 then 0 else pow(n % 10, k) + sumOfDigitsRaised(n / 10, k)
}

method armstrongNumber(number: int) returns (res: bool)
  requires number >= 0
  ensures res == (number == sumOfDigitsRaised(number, numDigits(number)))
{
  // Method implementation not provided
}
```