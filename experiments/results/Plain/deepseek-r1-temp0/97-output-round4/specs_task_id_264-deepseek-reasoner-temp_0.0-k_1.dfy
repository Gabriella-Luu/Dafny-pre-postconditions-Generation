```dafny
method dogAge(hAge:int) returns (res:int)
   requires hAge >= 0
   ensures res == if hAge <= 0 then 0 else (
                  if hAge == 1 then 15 else (
                    5 * hAge + 14))
```