Here is the Dafny method with preconditions and postconditions for checking if a given integer is a prime number:

```dafny
method IsPrime(n: int) returns (result: bool)
  // Preconditions
  requires n >= 2; // Prime numbers are defined for integers greater than or equal to 2
  // Postconditions
  ensures result == (forall d: int :: 2 <= d < n ==> n % d != 0); // The result is true if and only if n is divisible only by 1 and itself
{
  // Implementation not provided
}
```

### Explanation:
1. **Precondition (`requires`)**:
   - `n >= 2`: Prime numbers are defined for integers greater than or equal to 2. This ensures the input is valid for the prime-checking logic.

2. **Postcondition (`ensures`)**:
   - `result == (forall d: int :: 2 <= d < n ==> n % d != 0)`: The result is `true` if and only if `n` is not divisible by any integer `d` in the range `2 <= d < n`. This ensures the method correctly identifies prime numbers.