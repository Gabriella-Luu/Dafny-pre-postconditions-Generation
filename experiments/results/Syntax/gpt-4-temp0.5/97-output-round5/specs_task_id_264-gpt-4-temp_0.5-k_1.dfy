```dafny
method dogAge(hAge:int) returns (res:int)
    requires hAge >= 0
    ensures res >= 0
    ensures (hAge <= 2 && res == hAge * 10) || (hAge > 2 && res == 20 + (hAge - 2) * 4)
```