```dafny
method closestNum(n: int) returns (res: int)
   // Precondition: None needed since integers in Dafny are unbounded
   // Postcondition: Ensures the result is the immediate predecessor of n
   ensures res == n - 1
{
   // Implementation not shown
}
```