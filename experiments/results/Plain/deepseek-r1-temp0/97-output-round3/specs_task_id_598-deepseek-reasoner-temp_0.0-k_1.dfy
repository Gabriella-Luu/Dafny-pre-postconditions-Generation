```dafny
function NumberOfDigits(num: int): int
  requires num >= 0
{
  if num < 10 then 1 else 1 + NumberOfDigits(num / 10)
}

function SumDigitsPower(num: int, n: int): int
  requires num >= 0
{
  if num == 0 then 0 else (num % 10) ** n + SumDigitsPower(num / 10, n)
}

method armstrongNumber(number:int) returns (res:bool)
  requires number >= 0
  ensures res == (number == SumDigitsPower(number, NumberOfDigits(number)))
```