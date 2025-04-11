```dafny
method centeredHexagonalNumber(n: int) returns (res: int)
  requires n >= 0
  ensures res == 3 * n * (n - 1) + 1
{
  // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires`):** The method requires that `n` is a non-negative integer (`n >= 0`). This is because the centered hexagonal number is only defined for non-negative integers.
  
- **Postcondition (`ensures`):** The method ensures that the result `res` is equal to the formula for the nth centered hexagonal number, which is `3 * n * (n - 1) + 1`. This formula is derived from the mathematical definition of centered hexagonal numbers.

The postcondition is concise and directly verifies the correctness of the result based on the mathematical definition. No additional checks are needed since the formula uniquely determines the result.