```dafny
method dogAge(hAge:int) returns (res:int)
  requires hAge >= 0; // Dogs cannot have a negative age
  ensures res >= 0; // The result cannot be negative
  ensures res == hAge * 7; // In general, a dog's age is considered to be about 7 times a human's age
```