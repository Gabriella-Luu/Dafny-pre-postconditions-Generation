```dafny
method findStarNum(n: int) returns (res: int)
  requires n >= 0
  ensures res == 6 * n * (n - 1) + 1
{
  // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires n >= 0`)**: The n-th star number is only defined for non-negative integers. This ensures that the input `n` is valid.
- **Postcondition (`ensures res == 6 * n * (n - 1) + 1`)**: The n-th star number is given by the formula `6 * n * (n - 1) + 1`. This ensures that the result `res` is correctly computed according to the definition of star numbers.

This design adheres to the critical syntax rules and semantic requirements, ensuring logical simplicity and verification efficiency.