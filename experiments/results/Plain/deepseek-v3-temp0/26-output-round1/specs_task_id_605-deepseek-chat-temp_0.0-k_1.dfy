Here is the Dafny method with preconditions and postconditions for checking if a given integer is a prime number:

```dafny
method IsPrime(n: int) returns (result: bool)
  // Precondition: n must be a positive integer greater than 1
  requires n > 1
  // Postcondition: result is true if n is a prime number, false otherwise
  ensures result == (forall d: int :: 2 <= d < n ==> n % d != 0)
{
  // Implementation not provided
}
```

### Explanation:
1. **Precondition (`requires`)**:
   - `n > 1`: A prime number is defined as a natural number greater than 1 that has no positive divisors other than 1 and itself. Therefore, the input `n` must be greater than 1.

2. **Postcondition (`ensures`)**:
   - `result == (forall d: int :: 2 <= d < n ==> n % d != 0)`: This ensures that `result` is `true` if and only if `n` is not divisible by any integer `d` in the range `2 <= d < n`. This is the mathematical definition of a prime number.

This specification ensures that the method correctly identifies whether `n` is a prime number.