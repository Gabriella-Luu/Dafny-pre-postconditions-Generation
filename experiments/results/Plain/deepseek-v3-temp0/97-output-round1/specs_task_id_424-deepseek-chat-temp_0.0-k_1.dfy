Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method extractRear(strList: seq<string>) returns (res: seq<char>)
  // Preconditions
  requires |strList| > 0; // The input sequence must not be empty
  requires forall s :: s in strList ==> |s| > 0; // Every string in the sequence must not be empty
  // Postconditions
  ensures |res| == |strList|; // The result sequence has the same length as the input sequence
  ensures forall i :: 0 <= i < |strList| ==> res[i] == strList[i][|strList[i]| - 1]; // Each character in the result is the last character of the corresponding string in the input sequence
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - `|strList| > 0`: Ensures the input sequence `strList` is not empty.
   - `forall s :: s in strList ==> |s| > 0`: Ensures every string in the sequence is non-empty, so we can safely extract the last character.

2. **Postconditions (`ensures`):**
   - `|res| == |strList|`: Ensures the result sequence `res` has the same length as the input sequence `strList`.
   - `forall i :: 0 <= i < |strList| ==> res[i] == strList[i][|strList[i]| - 1]`: Ensures that each character in `res` is the last character of the corresponding string in `strList`. The expression `strList[i][|strList[i]| - 1]` accesses the last character of the string at index `i`.