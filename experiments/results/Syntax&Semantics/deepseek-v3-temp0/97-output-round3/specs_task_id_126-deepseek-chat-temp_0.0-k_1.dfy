```dafny
method sumOfCommonDivisor(a: int, b: int) returns (res: int)
  requires a > 0 && b > 0
  ensures res == (sum d | 1 <= d <= a && 1 <= d <= b && a % d == 0 && b % d == 0 :: d)
{
  // Implementation goes here
}
```

### Explanation:
- **Preconditions (`requires`)**:
  - `a > 0 && b > 0`: Ensures that both `a` and `b` are positive integers since divisors are only defined for positive integers.
  
- **Postconditions (`ensures`)**:
  - `res == (sum d | 1 <= d <= a && 1 <= d <= b && a % d == 0 && b % d == 0 :: d)`: Ensures that `res` is the sum of all common divisors of `a` and `b`. The condition `1 <= d <= a && 1 <= d <= b` ensures that `d` is a positive integer within the range of possible divisors. The conditions `a % d == 0 && b % d == 0` ensure that `d` is a divisor of both `a` and `b`. The `sum` expression sums up all such `d` values.

This design ensures that the method correctly computes the sum of common divisors while adhering to the given constraints and requirements.