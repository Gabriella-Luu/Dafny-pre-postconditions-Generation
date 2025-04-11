```dafny
method dogAge(hAge: int) returns (res: int)
  requires hAge >= 0  // Human age must be non-negative
  ensures res == hAge * 7  // Dog's age is 7 times the human age
{
  // Implementation not provided
}
```