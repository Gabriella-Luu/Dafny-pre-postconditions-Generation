```dafny
method armstrongNumber(number: int) returns (res: bool)
    requires number >= 0
    ensures res == (number == PowerSum(number, CountDigits(number)))
{
    // Implementation goes here
}

// Helper functions
function CountDigits(n: int): int
    requires n >= 0
    ensures CountDigits(n) >= 1
{
    if n < 10 then 1 else 1 + CountDigits(n / 10)
}

function PowerSum(n: int, digits: int): int
    requires n >= 0 && digits >= 1
    ensures PowerSum(n, digits) >= 0
{
    if n == 0 then 0 else Power(n % 10, digits) + PowerSum(n / 10, digits)
}

function Power(base: int, exponent: int): int
    requires base >= 0 && exponent >= 0
    ensures Power(base, exponent) >= 0
{
    if exponent == 0 then 1 else base * Power(base, exponent - 1)
}
```