```dafny
method dogAge(hAge: int) returns (res: int)
  // Precondition: Human age must be non-negative
  requires hAge >= 0
  // Postconditions:
  ensures hAge == 0 ==> res == 0            // If age is 0, result is 0
  ensures hAge == 1 ==> res == 15           // First human year = 15 dog years
  ensures hAge == 2 ==> res == 24           // Second human year = 24 dog years
  ensures hAge >= 3 ==> res == 24 + 5 * (hAge - 2) // Subsequent years add 5 dog years each
{
  // Method implementation would go here
}
```