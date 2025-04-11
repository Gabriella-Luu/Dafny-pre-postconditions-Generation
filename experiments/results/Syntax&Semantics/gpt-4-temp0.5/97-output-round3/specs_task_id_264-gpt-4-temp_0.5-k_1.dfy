```dafny
method dogAge(hAge:int) returns (res:int)
    requires hAge >= 0; // The age of the dog in human years should be non-negative
    ensures res == hAge * 7; // The age of the dog in dog years is 7 times the age in human years
```