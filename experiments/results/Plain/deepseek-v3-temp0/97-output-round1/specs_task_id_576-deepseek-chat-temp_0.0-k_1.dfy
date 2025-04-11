Here is the Dafny method with preconditions and postconditions designed based on the task description:

```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  // Preconditions:
  // - `sub` and `main` are valid sequences of integers.
  requires sub != [] && main != [];
  // Postconditions:
  // - If `sub` is a sublist of `main`, `result` is true.
  // - If `sub` is not a sublist of `main`, `result` is false.
  ensures result == (exists i :: 0 <= i <= |main| - |sub| && main[i..i+|sub|] == sub);
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - The sequences `sub` and `main` must not be empty. This ensures that the method operates on valid input sequences.

2. **Postconditions (`ensures`):**
   - The result is `true` if and only if there exists an index `i` in `main` such that the subsequence of `main` starting at `i` and of length `|sub|` is equal to `sub`. This captures the definition of a sublist.

This design ensures that the method correctly verifies whether `sub` is a sublist of `main` and adheres to the requirements.