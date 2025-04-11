```dafny
method numberOfSubstrings(str: string) returns (res: int)
  ensures res >= 0
  ensures res == (|str| * (|str| + 1)) / 2
{
  // Implementation not provided
}
```

### Explanation:
- **Postconditions**:
  - `res >= 0`: The number of non-empty substrings is always non-negative.
  - `res == (|str| * (|str| + 1)) / 2`: The total number of non-empty substrings of a string of length `n` is given by the formula `n*(n+1)/2`. This formula counts all possible substrings of length 1 to `n`.

The preconditions are minimal and sufficient, as the method does not require any specific conditions on the input string `str` to compute the number of non-empty substrings.