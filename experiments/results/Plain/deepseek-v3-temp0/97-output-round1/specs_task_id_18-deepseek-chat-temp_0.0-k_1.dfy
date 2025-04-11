Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method removeChars(firstStr: string, secondStr: string) returns (res: string)
  // Preconditions
  requires firstStr != null && secondStr != null; // Ensure neither input string is null
  // Postconditions
  ensures res != null; // The result is never null
  ensures forall c :: c in res ==> c in firstStr; // Every character in the result is from the first string
  ensures forall c :: c in res ==> c !in secondStr; // No character in the result is from the second string
  ensures |res| <= |firstStr|; // The length of the result is at most the length of the first string
  ensures |res| == |firstStr| <==> (forall c :: c in firstStr ==> c !in secondStr); // The result has the same length as the first string if and only if no characters were removed
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`)**:
   - `firstStr != null && secondStr != null`: Ensures that neither of the input strings is null, as null strings would lead to runtime errors.

2. **Postconditions (`ensures`)**:
   - `res != null`: Guarantees that the result string is never null.
   - `forall c :: c in res ==> c in firstStr`: Ensures that every character in the result string `res` is also present in the first string `firstStr`.
   - `forall c :: c in res ==> c !in secondStr`: Ensures that no character in the result string `res` is present in the second string `secondStr`.
   - `|res| <= |firstStr|`: Ensures that the length of the result string `res` is at most the length of the first string `firstStr`.
   - `|res| == |firstStr| <==> (forall c :: c in firstStr ==> c !in secondStr)`: Ensures that the result string `res` has the same length as the first string `firstStr` if and only if no characters were removed (i.e., no characters in `firstStr` are present in `secondStr`).

These conditions collectively ensure the correctness of the method based on the task description.