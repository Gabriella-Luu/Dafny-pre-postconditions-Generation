Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method replaceBlank(str1: string, ch: char) returns (res: string)
  // Preconditions
  requires str1 != null; // The input string must not be null
  // Postconditions
  ensures res != null; // The result string must not be null
  ensures |res| == |str1|; // The length of the result string must match the input string
  ensures forall i :: 0 <= i < |str1| ==> 
    (str1[i] == ' ' ==> res[i] == ch) && // Every blank space in str1 is replaced with ch in res
    (str1[i] != ' ' ==> res[i] == str1[i]); // Non-blank characters remain unchanged
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`)**:
   - `str1 != null`: Ensures the input string is not null to avoid null reference errors.

2. **Postconditions (`ensures`)**:
   - `res != null`: Ensures the returned string is not null.
   - `|res| == |str1|`: Ensures the length of the result string matches the input string.
   - `forall i :: 0 <= i < |str1| ==> ...`: Ensures that:
     - Every blank space (`' '`) in `str1` is replaced with `ch` in `res`.
     - Non-blank characters in `str1` remain unchanged in `res`.

This specification ensures the method behaves as expected and verifies the correctness of the implementation.