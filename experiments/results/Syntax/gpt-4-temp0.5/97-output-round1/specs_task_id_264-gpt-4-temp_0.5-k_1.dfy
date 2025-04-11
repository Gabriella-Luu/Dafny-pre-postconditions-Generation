```dafny
method dogAge(hAge:int) returns (res:int)
    requires hAge >= 0 // The human age must be non-negative
    ensures res >= 0 // The dog age must be non-negative
    ensures hAge <= res // The dog age must be greater or equal to the human age
```