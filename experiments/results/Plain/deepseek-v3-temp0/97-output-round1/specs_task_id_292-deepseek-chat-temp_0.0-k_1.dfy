Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method findQuotient(a: int, b: int) returns (res: int)
  // Preconditions
  requires b != 0; // Divisor must not be zero
  requires a >= 0 && b > 0; // Ensure non-negative dividend and positive divisor for simplicity
  // Postconditions
  ensures res * b <= a; // The result multiplied by the divisor should be less than or equal to the dividend
  ensures a < (res + 1) * b; // The next integer multiple of the divisor should be greater than the dividend
  ensures res >= 0; // The quotient should be non-negative
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - `b != 0`: Division by zero is undefined, so the divisor must not be zero.
   - `a >= 0 && b > 0`: Ensures the dividend is non-negative and the divisor is positive. This simplifies the problem by avoiding negative numbers and ensures the quotient is non-negative.

2. **Postconditions (`ensures`):**
   - `res * b <= a`: Ensures that the quotient multiplied by the divisor does not exceed the dividend.
   - `a < (res + 1) * b`: Ensures that the next integer multiple of the divisor is greater than the dividend, confirming that the quotient is the largest integer less than or equal to the exact division result.
   - `res >= 0`: Ensures the quotient is non-negative, aligning with the precondition that the dividend is non-negative and the divisor is positive.

This design ensures the method behaves correctly for the given task.