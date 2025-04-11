```dafny
method dogAge(hAge: int) returns (res: int)
  requires hAge >= 0; // the human age of the dog must be non-negative
  ensures res >= 0; // the dog's age in dog's years must be non-negative
  ensures res == hAge * 7; // a dog's age in dog's years is typically considered to be 7 times its age in human years
```