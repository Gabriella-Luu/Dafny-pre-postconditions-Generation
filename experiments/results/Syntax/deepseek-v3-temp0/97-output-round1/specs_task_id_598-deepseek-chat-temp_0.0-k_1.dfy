```dafny
method armstrongNumber(number: int) returns (res: bool)
  requires number >= 0
  ensures res == (number == PowerSum(number, CountDigits(number)))
{
  // Implementation not provided
}

// Helper functions
function CountDigits(n: int): int
  requires n >= 0
  ensures CountDigits(n) == if n == 0 then 1 else (var count := 0; var temp := n; while temp != 0 ensures count >= 0 { count := count + 1; temp := temp / 10; } count)

function PowerSum(n: int, power: int): int
  requires n >= 0 && power >= 0
  ensures PowerSum(n, power) == (var sum := 0; var temp := n; while temp != 0 ensures sum >= 0 { sum := sum + Power(temp % 10, power); temp := temp / 10; } sum)

function Power(base: int, exponent: int): int
  requires base >= 0 && exponent >= 0
  ensures Power(base, exponent) == if exponent == 0 then 1 else base * Power(base, exponent - 1)
```