```dafny
method isNumDecagonal(n: int) returns (res: int)
  requires n >= 0
  ensures res == n * (4 * n - 3)
{
  // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires`):** The method requires that `n` is a non-negative integer (`n >= 0`). This is because decagonal numbers are defined for non-negative integers.
- **Postcondition (`ensures`):** The method ensures that the result `res` is equal to the nth decagonal number, which is calculated using the formula `n * (4 * n - 3)`. This formula is derived from the definition of decagonal numbers.

The preconditions and postconditions are minimal yet sufficient to verify the correctness of the method.