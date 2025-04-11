```dafny
method dogAge(hAge: int) returns (res: int)
  requires hAge >= 0
  ensures hAge == 0 ==> res == 0
  ensures hAge == 1 ==> res == 15
  ensures hAge >= 2 ==> res == 24 + 5 * (hAge - 2)
```