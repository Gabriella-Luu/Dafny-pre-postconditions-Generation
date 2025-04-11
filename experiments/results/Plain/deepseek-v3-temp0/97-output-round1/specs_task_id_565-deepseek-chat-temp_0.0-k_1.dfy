Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method split(str: string) returns (res: seq<char>)
  // Precondition: The input string must not be null.
  requires str != null
  // Postcondition: The result sequence contains all characters of the input string in order.
  ensures |res| == |str|
  ensures forall i :: 0 <= i < |str| ==> res[i] == str[i]
{
  // Implementation not provided
}
```

### Explanation:
1. **Precondition (`requires`)**:
   - `str != null`: Ensures the input string is not null, as splitting a null string is not meaningful.

2. **Postconditions (`ensures`)**:
   - `|res| == |str|`: Ensures the length of the resulting sequence of characters (`res`) is equal to the length of the input string (`str`).
   - `forall i :: 0 <= i < |str| ==> res[i] == str[i]`: Ensures that every character in the resulting sequence (`res`) matches the corresponding character in the input string (`str`) at the same index.

These conditions ensure the correctness of the `split` method by verifying that the output sequence accurately represents the characters of the input string.