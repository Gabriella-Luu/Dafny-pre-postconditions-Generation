Here is the Dafny method with preconditions and postconditions for finding the nth hexagonal number:

```dafny
method hexagonalNum(n: int) returns (res: int)
  // Precondition: n must be a non-negative integer
  requires n >= 0
  // Postcondition: res is the nth hexagonal number, calculated as n*(2n-1)
  ensures res == n * (2 * n - 1)
{
  // Implementation is omitted
}
```

### Explanation:
1. **Precondition (`requires`):**
   - The input `n` must be a non-negative integer (`n >= 0`) because hexagonal numbers are only defined for non-negative integers.

2. **Postcondition (`ensures`):**
   - The result `res` must satisfy the formula for the nth hexagonal number, which is `n * (2 * n - 1)`. This ensures the correctness of the method.

This design ensures that the method is verified to compute the correct hexagonal number for any valid input `n`.