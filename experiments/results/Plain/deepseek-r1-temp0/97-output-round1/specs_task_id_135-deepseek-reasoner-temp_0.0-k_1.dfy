```dafny
method hexagonalNum(n: int) returns (res: int)
   // Precondition: n must be at least 1 since hexagonal numbers start from the 1st position
   requires n >= 1
   // Postcondition: The result matches the formula for the nth hexagonal number: H_n = n(2n-1)
   ensures res == n * (2 * n - 1)
{
   // Implementation not shown
}
```