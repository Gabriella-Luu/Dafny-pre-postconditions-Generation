```dafny
method isNumDecagonal(n: int) returns (res: int)
   // Precondition: Input must be a positive integer
   requires n >= 1
   // Postcondition: Result matches the nth decagonal number formula
   ensures res == 4*n*n - 3*n
{
   // Method implementation would go here
}
```