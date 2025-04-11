```dafny
method IsPrime(n: int) returns (result: bool)
    requires n >= 2
    ensures result <==> (forall i :: 2 <= i < n ==> n % i != 0)
{
    // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires`):** The method requires that `n` is at least 2, as prime numbers are defined for integers greater than or equal to 2.
- **Postcondition (`ensures`):** The postcondition ensures that `result` is `true` if and only if `n` is not divisible by any integer `i` where `2 <= i < n`. This captures the definition of a prime number.

This design adheres to the critical syntax rules and semantic requirements, ensuring logical simplicity and verification efficiency.