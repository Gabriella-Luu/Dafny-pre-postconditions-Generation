Here is the Dafny method with preconditions and postconditions for the task:

```dafny
method isOctagonal(n: int) returns (res: int)
  requires n > 0 // precondition: n must be a positive integer
  ensures res == n * (3*n - 2) // postcondition: returned value must be the nth octagonal number
{
  // Method implementation goes here
}
```
Please note that the nth octagonal number can be calculated using the formula n * (3n - 2).