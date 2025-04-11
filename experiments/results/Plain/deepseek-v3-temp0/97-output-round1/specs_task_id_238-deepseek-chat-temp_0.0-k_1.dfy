Here is the Dafny method with preconditions and postconditions designed based on the task description:

```dafny
method numberOfSubstrings(str: string) returns (res: int)
  // Precondition: The input string must be non-null (Dafny strings are non-null by default, so no explicit precondition is needed).
  // Postcondition: The result `res` is the total number of non-empty substrings of `str`.
  ensures res >= 0
  ensures res == |str| * (|str| + 1) / 2
{
  // Implementation is omitted.
}
```

### Explanation:
1. **Preconditions**: 
   - Dafny strings are non-null by default, so no explicit precondition is needed to ensure the input string is valid.

2. **Postconditions**:
   - `res >= 0`: Ensures the result is non-negative, as the number of substrings cannot be negative.
   - `res == |str| * (|str| + 1) / 2`: Ensures the result is the correct number of non-empty substrings. This formula calculates the total number of non-empty substrings for a string of length `|str|`, which is derived from the sum of the first `n` natural numbers (where `n = |str|`).

This design ensures the method is verified to correctly count the number of non-empty substrings of the input string.