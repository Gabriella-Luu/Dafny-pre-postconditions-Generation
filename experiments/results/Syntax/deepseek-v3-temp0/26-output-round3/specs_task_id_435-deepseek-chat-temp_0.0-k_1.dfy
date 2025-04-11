```dafny
method LastDigit(n: int) returns (d: int)
  ensures d == (n % 10) || (n == 0 && d == 0)
{
  // Implementation not provided
}
```

### Explanation:
- **Preconditions**: None are needed since the method works for any integer `n`.
- **Postconditions**: The postcondition ensures that `d` is the last digit of `n`. This is achieved by checking that `d` is equal to `n % 10` (the remainder when `n` is divided by 10), which gives the last digit. The special case `n == 0` is handled to ensure that `d` is also `0` when `n` is `0`.
- The postcondition is minimal yet sufficient to verify the correctness of the method.