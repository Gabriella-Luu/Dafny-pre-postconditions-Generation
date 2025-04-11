```dafny
method isNonagonal(n:int) returns (res:int)
   requires n >= 1
   ensures res == n * (7*n - 5)/2
{
   // Implementation not shown
}
```