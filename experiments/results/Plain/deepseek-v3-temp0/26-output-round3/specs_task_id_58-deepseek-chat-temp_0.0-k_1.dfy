Here is the Dafny method with preconditions and postconditions for the task of checking whether two integers have opposite signs:

```dafny
method HasOppositeSign(a: int, b: int) returns (result: bool)
  // Preconditions: None needed, as the method works for all integers.
  // Postconditions: The result is true if and only if the two integers have opposite signs.
  ensures result == ((a < 0 && b >= 0) || (a >= 0 && b < 0))
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`)**: No preconditions are needed because the method is designed to work for all possible integer values of `a` and `b`.
2. **Postconditions (`ensures`)**: The postcondition ensures that the `result` is `true` if and only if one of the integers is negative and the other is non-negative (or vice versa). This captures the definition of "opposite signs" mathematically.

This design ensures that the method is verified to behave correctly according to the task description.