```dafny
method isOctagonal(n: int) returns (res: int)
  requires n >= 0
  ensures res == n * (3 * n - 2)
{
  // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires`):** The method requires that `n` is a non-negative integer (`n >= 0`). This is because the nth octagonal number is only defined for non-negative integers.
  
- **Postcondition (`ensures`):** The method ensures that the result `res` is equal to the nth octagonal number, which is calculated using the formula `n * (3 * n - 2)`. This formula is derived from the definition of octagonal numbers.

This design ensures that the method is both correct and verifiable in Dafny, adhering to the given constraints and requirements.