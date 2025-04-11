Here is the Dafny method with preconditions and postconditions for finding the n'th star number:

```dafny
method findStarNum(n: int) returns (res: int)
  // Precondition: n must be a non-negative integer (since star numbers are defined for n >= 0)
  requires n >= 0
  // Postcondition: The result is the n'th star number, which is given by the formula 6n(n - 1) + 1
  ensures res == 6 * n * (n - 1) + 1
{
  // Implementation is omitted
}
```

### Explanation:
1. **Precondition (`requires`):**
   - The input `n` must be a non-negative integer (`n >= 0`) because star numbers are only defined for non-negative integers.

2. **Postcondition (`ensures`):**
   - The result `res` must satisfy the formula for the n'th star number, which is `6 * n * (n - 1) + 1`. This ensures the correctness of the method by verifying that the returned value matches the mathematical definition of a star number.

This design ensures that the method is both safe (due to the precondition) and correct (due to the postcondition).