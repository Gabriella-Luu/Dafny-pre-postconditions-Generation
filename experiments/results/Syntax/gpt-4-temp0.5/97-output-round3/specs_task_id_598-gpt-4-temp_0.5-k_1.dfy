```dafny
method armstrongNumber(number: int) returns (res: bool)
  requires number >= 0
  ensures res <==> (forall i: int :: 0 <= i < |number.ToString()| ==> 
                    (number.ToString()[i] - '0') as int in 0..9) &&
                   (sumDigitsPower(number, |number.ToString()|) == number)
{
}

function method sumDigitsPower(n: int, power: int): int
  requires n >= 0
  requires power >= 0
  decreases n
{
  if n == 0 then 0
  else (n % 10) * Power(n % 10, power - 1) + sumDigitsPower(n / 10, power)
}

function method Power(base: int, exponent: int): int
  requires exponent >= 0
  decreases exponent
{
  if exponent == 0 then 1
  else base * Power(base, exponent - 1)
}
```