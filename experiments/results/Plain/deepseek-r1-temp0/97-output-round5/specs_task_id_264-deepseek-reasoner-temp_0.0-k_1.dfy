```dafny
method dogAge(hAge: int) returns (res: int)
  requires hAge >= 0  // Precondition: Human age must be non-negative
  ensures res == (if hAge <= 2 then (hAge * 21) / 2 else 21 + 4 * (hAge - 2))  // Postcondition: Dog years calculation formula
{
  // Method implementation not provided
}
```