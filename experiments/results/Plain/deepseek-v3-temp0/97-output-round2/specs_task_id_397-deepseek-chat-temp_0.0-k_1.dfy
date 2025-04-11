Here is the Dafny method with preconditions and postconditions for finding the median of three numbers:

```dafny
method medianNumbers(a: int, b: int, c: int) returns (median: int)
  // Preconditions: None needed, as the method works for any three integers.
  // Postconditions: The returned value is the median of the three input numbers.
  ensures median == a || median == b || median == c // The median is one of the input numbers.
  ensures (median >= a && median <= c) || (median >= c && median <= a) // Median is between the smallest and largest.
  ensures (median >= b && median <= c) || (median >= c && median <= b) // Median is between the smallest and largest.
  ensures (median >= a && median <= b) || (median >= b && median <= a) // Median is between the smallest and largest.
{
  // Implementation not provided.
}
```

### Explanation:
1. **Preconditions**: No preconditions are needed because the method works for any three integers.
2. **Postconditions**:
   - The median is one of the input numbers (`median == a || median == b || median == c`).
   - The median is between the smallest and largest of the three numbers. This is expressed in three separate conditions to cover all possible orderings of `a`, `b`, and `c`.

These postconditions ensure that the returned value is indeed the median of the three input numbers.