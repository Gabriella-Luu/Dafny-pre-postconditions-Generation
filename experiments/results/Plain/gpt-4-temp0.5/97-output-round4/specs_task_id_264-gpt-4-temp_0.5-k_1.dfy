```dafny
method dogAge(hAge: int) returns (res: int)
  requires hAge >= 0; // The dog's age in human years must be non-negative
  ensures res >= 0; // The dog's age in dog years must be non-negative
  ensures res == hAge * 7; // In popular mythology, 1 human year is considered equivalent to 7 dog years
```