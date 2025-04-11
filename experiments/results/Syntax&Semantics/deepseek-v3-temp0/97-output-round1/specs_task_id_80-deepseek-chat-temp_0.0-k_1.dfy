```dafny
method tetrahedralNumber(n: int) returns (res: int)
  requires n >= 0
  ensures res == (n * (n + 1) * (n + 2)) / 6
{
  // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires n >= 0`)**: The tetrahedral number is defined for non-negative integers, so we ensure that `n` is non-negative.
- **Postcondition (`ensures res == (n * (n + 1) * (n + 2)) / 6`)**: The tetrahedral number for `n` is given by the formula `(n * (n + 1) * (n + 2)) / 6`. This ensures that the result `res` is correctly computed according to the mathematical definition of the tetrahedral number.

This design is minimal yet sufficient, adhering to the critical syntax rules and semantic requirements.