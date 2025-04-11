```dafny
method dogAge(hAge:int) returns (res:int)
  requires hAge >= 0; // The human age of the dog must be non-negative
  ensures res >= 0; // The result, dog's age in dog years, must be non-negative
  ensures res == hAge * 7; // The result should be the human age multiplied by 7, as 1 human year is roughly equivalent to 7 dog years
```