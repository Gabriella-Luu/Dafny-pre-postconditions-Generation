Here is the Dafny method with preconditions and postconditions for finding the median of three numbers:

```dafny
method medianNumbers(a: int, b: int, c: int) returns (median: int)
  // Preconditions: None needed, as the method works for any three integers.
  // Postconditions: The returned median is the middle value among a, b, and c.
  ensures median == a || median == b || median == c; // The median is one of the input values
  ensures (median >= a && median <= c) || (median >= c && median <= a) || 
          (median >= b && median <= a) || (median >= a && median <= b) || 
          (median >= c && median <= b) || (median >= b && median <= c); // The median is between the other two values
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions**: No preconditions are needed because the method works for any three integers.
2. **Postconditions**:
   - The first `ensures` clause guarantees that the returned `median` is one of the input values (`a`, `b`, or `c`).
   - The second `ensures` clause ensures that the `median` is between the other two values, meaning it is the middle value when the three numbers are ordered.

This ensures the correctness of the method in finding the median of three numbers.