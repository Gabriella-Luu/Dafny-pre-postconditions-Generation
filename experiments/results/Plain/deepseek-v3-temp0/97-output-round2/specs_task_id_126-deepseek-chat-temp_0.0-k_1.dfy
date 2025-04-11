Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method sumOfCommonDivisor(a: int, b: int) returns (res: int)
  // Preconditions:
  // Both inputs must be positive integers since divisors are defined for positive numbers.
  requires a > 0
  requires b > 0
  // Postconditions:
  // The result `res` is the sum of all positive integers that divide both `a` and `b`.
  ensures res >= 1 // The sum of common divisors is at least 1 (since 1 is a common divisor of any two positive integers).
  ensures a % res == 0 && b % res == 0 // The result is a common divisor of both `a` and `b`.
  ensures forall d: int :: (d > 0 && a % d == 0 && b % d == 0) ==> d <= res // The result is the maximum possible sum of common divisors.
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - `a > 0` and `b > 0`: Divisors are only defined for positive integers, so the inputs must be positive.

2. **Postconditions (`ensures`):**
   - `res >= 1`: The sum of common divisors is at least 1 because 1 is always a common divisor of any two positive integers.
   - `a % res == 0 && b % res == 0`: The result `res` must be a common divisor of both `a` and `b`.
   - `forall d: int :: (d > 0 && a % d == 0 && b % d == 0) ==> d <= res`: The result `res` is the maximum possible sum of common divisors, meaning no larger sum of common divisors exists.

This specification ensures that the method correctly computes the sum of common divisors of `a` and `b`.