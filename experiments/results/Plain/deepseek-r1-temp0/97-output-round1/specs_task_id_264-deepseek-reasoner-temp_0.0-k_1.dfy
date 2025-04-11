```dafny
method dogAge(hAge:int) returns (res:int)
   requires hAge >= 0
   ensures res == if hAge == 0 then 0 else (
                  if hAge == 1 then 15 else (
                  if hAge == 2 then 24 else (24 + 5*(hAge - 2))))
```