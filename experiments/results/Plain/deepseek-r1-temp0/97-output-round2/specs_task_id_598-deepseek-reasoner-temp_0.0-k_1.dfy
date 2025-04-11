```dafny
method armstrongNumber(number: int) returns (res: bool)
  requires number >= 0
  ensures res == (number == (if number == 0 then 0 else (
    var n := number;
    var numDigits := countDigits(number);
    var sum := 0;
    while n > 0
      invariant sum >= 0
      decreases n
    {
      sum := sum + pow(n % 10, numDigits);
      n := n / 10;
    }
    sum
  )))
{
  // Dafny method without implementation
}

// Helper functions for specification (not part of method implementation)
function countDigits(n: int): int
  requires n >= 0
  ensures n == 0 ==> countDigits(n) == 1
{
  if n < 10 then 1 else 1 + countDigits(n / 10)
}

function pow(base: int, exp: int): int
  requires exp >= 0
  ensures exp == 0 ==> pow(base, exp) == 1
{
  if exp == 0 then 1 else base * pow(base, exp - 1)
}
```