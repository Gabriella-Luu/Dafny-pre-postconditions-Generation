Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method ReplaceChars(s: string, oldChar: char, newChar: char) returns (v: string)
  // Preconditions
  requires s != null  // The input string must not be null
  // Postconditions
  ensures |v| == |s|  // The length of the output string is the same as the input string
  ensures forall i :: 0 <= i < |s| ==> 
    (s[i] == oldChar ==> v[i] == newChar) && 
    (s[i] != oldChar ==> v[i] == s[i])  // Each character in the output string is either replaced or unchanged
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`)**:
   - `s != null`: Ensures the input string `s` is not null, as working with a null string would lead to errors.

2. **Postconditions (`ensures`)**:
   - `|v| == |s|`: Ensures the length of the output string `v` is the same as the input string `s`.
   - `forall i :: 0 <= i < |s| ==> (s[i] == oldChar ==> v[i] == newChar) && (s[i] != oldChar ==> v[i] == s[i])`: Ensures that every character in the output string `v` is either:
     - Replaced with `newChar` if it matches `oldChar` in the input string `s`.
     - Unchanged if it does not match `oldChar` in the input string `s`.

This specification ensures the correctness of the `ReplaceChars` method.