Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method removeChars(firstStr: string, secondStr: string) returns (res: string)
  // Preconditions
  requires firstStr != null && secondStr != null; // Ensure neither input string is null
  // Postconditions
  ensures res != null; // The result is a valid string (not null)
  ensures forall c :: c in res ==> c in firstStr; // Every character in the result is from the first string
  ensures forall c :: c in res ==> c !in secondStr; // No character in the result is from the second string
  ensures |res| <= |firstStr|; // The length of the result is less than or equal to the length of the first string
  ensures forall c :: c in firstStr && c !in secondStr ==> c in res; // All characters in the first string not in the second string are in the result
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`)**:
   - `firstStr != null && secondStr != null`: Ensures that neither of the input strings is null, as null strings would cause issues during processing.

2. **Postconditions (`ensures`)**:
   - `res != null`: Ensures the result is a valid string and not null.
   - `forall c :: c in res ==> c in firstStr`: Ensures every character in the result is from the first string.
   - `forall c :: c in res ==> c !in secondStr`: Ensures no character in the result is from the second string.
   - `|res| <= |firstStr|`: Ensures the length of the result is less than or equal to the length of the first string.
   - `forall c :: c in firstStr && c !in secondStr ==> c in res`: Ensures all characters in the first string that are not in the second string are included in the result.

These conditions collectively ensure the correctness of the method in removing characters from `firstStr` that are present in `secondStr`.