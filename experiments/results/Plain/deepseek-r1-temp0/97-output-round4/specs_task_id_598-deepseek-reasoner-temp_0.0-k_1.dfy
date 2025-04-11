```dafny
method armstrongNumber(number:int) returns (res:bool)
   requires number >= 0
   ensures res == (number == SumDigitPowers(number, CountDigits(number)))
{
   // Implementation not provided
}

// Helper ghost functions for specification
function CountDigits(n: int): nat
   requires n >= 0
{
   if n < 10 then 1 else 1 + CountDigits(n / 10)
}

function SumDigitPowers(n: int, k: nat): nat
   requires n >= 0
{
   if n == 0 then 0 else (n % 10)^k + SumDigitPowers(n / 10, k)
}
```