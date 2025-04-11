```dafny
method dogAge(hAge:int) returns (res:int)
requires hAge >= 0
ensures res == (if hAge <= 0 then 0 else (if hAge <= 2 then (hAge * 21) / 2 else 21 + (4 * (hAge - 2))))
```