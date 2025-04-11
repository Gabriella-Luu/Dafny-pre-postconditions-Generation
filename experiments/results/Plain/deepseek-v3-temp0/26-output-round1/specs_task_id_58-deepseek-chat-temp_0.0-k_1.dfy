Here is the Dafny method with preconditions and postconditions designed to check whether two integers have opposite signs:

```dafny
method HasOppositeSign(a: int, b: int) returns (result: bool)
  // Preconditions: None, as the method should work for all integers.
  // Postconditions: The result is true if the signs of a and b are opposite, false otherwise.
  ensures result == ((a < 0 && b >= 0) || (a >= 0 && b < 0))
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`)**: There are no preconditions because the method should work for all possible integer inputs.
2. **Postconditions (`ensures`)**: The result is `true` if one of the integers is negative and the other is non-negative, or vice versa. This is expressed as `(a < 0 && b >= 0) || (a >= 0 && b < 0)`.

This ensures that the method correctly determines whether the two integers have opposite signs.