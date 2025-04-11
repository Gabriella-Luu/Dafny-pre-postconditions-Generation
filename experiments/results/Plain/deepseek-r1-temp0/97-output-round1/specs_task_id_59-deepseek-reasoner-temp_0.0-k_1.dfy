```dafny
method isOctagonal(n: int) returns (res: int)
  // Precondition: n must be a positive integer (octagonal numbers are defined for n ≥ 1)
  requires n >= 1
  // Postcondition: Result matches the formula for nth octagonal number (3n² - 2n)
  ensures res == 3*n*n - 2*n
{
  // Method implementation would calculate 3n² - 2n here
}
```