```dafny
method IsPrime(n: int) returns (result: bool)
    requires n >= 2
    ensures result <==> (forall i :: 2 <= i < n ==> n % i != 0)
{
    // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires`):** The method assumes that `n` is at least 2, as prime numbers are defined for integers greater than or equal to 2.
- **Postcondition (`ensures`):** The method guarantees that `result` is `true` if and only if `n` is not divisible by any integer `i` where `2 <= i < n`. This ensures that `n` is a prime number.

This design adheres to the critical syntax rules and semantic requirements, providing a minimal yet sufficient set of conditions to verify the correctness of the `IsPrime` method.