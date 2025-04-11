```dafny
method LastDigit(n: int) returns (d: int)
  ensures d == (if n >= 0 then n % 10 else (-n) % 10
{
  // Implementation not provided
}
```

### Explanation:
- **Preconditions**: None are needed because the method works for all integers, including negative numbers.
- **Postconditions**: The postcondition ensures that the last digit `d` is correctly computed. If `n` is non-negative, `d` is simply `n % 10`. If `n` is negative, the last digit is computed as `(-n) % 10` to ensure the result is always a non-negative digit. This covers all cases without requiring additional preconditions.