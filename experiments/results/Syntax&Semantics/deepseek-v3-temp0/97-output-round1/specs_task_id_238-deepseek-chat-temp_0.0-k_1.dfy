```dafny
method numberOfSubstrings(str: string) returns (res: int)
  ensures res == (|str| * (|str| + 1)) / 2
{
  // Implementation not provided
}
```

### Explanation:
- **Preconditions**: None are needed because the method works for any string, including the empty string.
- **Postconditions**: The postcondition ensures that the result `res` is equal to the number of non-empty substrings of `str`. The formula `(|str| * (|str| + 1)) / 2` calculates the number of non-empty substrings for a string of length `|str|`. This formula is derived from the fact that the number of substrings of length `k` in a string of length `n` is `n - k + 1`, and summing this over all possible lengths `k` from 1 to `n` gives the total number of non-empty substrings.

This postcondition is concise and directly captures the requirement without redundancy.