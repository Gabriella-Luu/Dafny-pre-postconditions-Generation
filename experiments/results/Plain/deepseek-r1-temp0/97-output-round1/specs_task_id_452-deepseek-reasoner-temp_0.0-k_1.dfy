```dafny
method lossAmount(cost: int, sale: int) returns (res: int)
  // Preconditions: Input values must be non-negative
  requires cost >= 0
  requires sale >= 0
  // Postconditions: Result matches loss calculation logic and is non-negative
  ensures res == (if sale < cost then cost - sale else 0)
  ensures res >= 0
{
  // Method implementation not provided
}
```