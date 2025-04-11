Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method replaceBlank(str1: string, ch: char) returns (res: string)
  // Preconditions
  requires str1 != null  // The input string must not be null
  // Postconditions
  ensures res != null  // The result string must not be null
  ensures |res| == |str1|  // The length of the result string must match the input string
  ensures forall i :: 0 <= i < |str1| ==> 
    (str1[i] == ' ' ==> res[i] == ch) &&  // Every blank space in str1 is replaced with ch in res
    (str1[i] != ' ' ==> res[i] == str1[i])  // Non-blank characters remain unchanged
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - `str1 != null`: Ensures the input string is not null, as null strings are invalid for this operation.

2. **Postconditions (`ensures`):**
   - `res != null`: Ensures the result string is not null.
   - `|res| == |str1|`: Ensures the length of the result string matches the input string.
   - The final postcondition ensures:
     - Every blank space (`' '`) in `str1` is replaced with `ch` in `res`.
     - Non-blank characters in `str1` remain unchanged in `res`.
   
This specification guarantees the correctness of the method based on the task requirements.