Here is the Dafny method with preconditions and postconditions designed to check whether two integers have opposite signs:

```dafny
method HasOppositeSign(a: int, b: int) returns (result: bool)
  // Preconditions: None needed, as the method works for all integers.
  // Postconditions: The result is true if and only if the signs of a and b are opposite.
  ensures result == ((a < 0 && b >= 0) || (a >= 0 && b < 0))
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`)**: No preconditions are needed because the method is valid for all integer values of `a` and `b`.
2. **Postconditions (`ensures`)**: The result is `true` if and only if one of the following conditions is met:
   - `a` is negative and `b` is non-negative.
   - `a` is non-negative and `b` is negative.
   This ensures the correctness of the method in determining whether the two integers have opposite signs.