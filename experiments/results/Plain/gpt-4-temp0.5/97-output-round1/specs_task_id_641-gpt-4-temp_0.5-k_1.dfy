Here is your Dafny method with the required preconditions and postconditions:

```dafny
method isNonagonal(n:int) returns (res:int)
  requires n > 0  // Nonagonality starts from 1
  ensures res == n * (7*n - 5) / 2  // Nonagonal number formula
{
  // Method implementation here
}
```

In this method, the precondition ensures that the input number n is greater than 0 because nonagonal numbers start from 1. The postcondition ensures that the returned result is the nth nonagonal number, calculated using the formula for nonagonal numbers.