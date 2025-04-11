```dafny
method LastDigit(n: int) returns (d: int)
  ensures d == (if n >= 0 then n % 10 else (-n) % 10
{
  // Implementation not provided
}
```

### Explanation:
- **Preconditions**: None are needed because the method works for any integer `n`, including negative numbers.
- **Postconditions**: The postcondition ensures that `d` is the last digit of `n`. If `n` is non-negative, the last digit is `n % 10`. If `n` is negative, the last digit is `(-n) % 10` to handle the negative case correctly. This ensures that the method works for all integers.

The postcondition is concise and directly captures the requirement of finding the last digit of `n`.