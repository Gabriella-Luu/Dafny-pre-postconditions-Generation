Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method removeChars(firstStr: string, secondStr: string) returns (res: string)
  // Preconditions
  requires firstStr != null && secondStr != null; // Ensure inputs are valid strings
  // Postconditions
  ensures res != null; // Result is a valid string
  ensures forall c: char :: c in res ==> c in firstStr; // All characters in res are from firstStr
  ensures forall c: char :: c in res ==> c !in secondStr; // No characters in res are from secondStr
  ensures |res| <= |firstStr|; // Length of res is less than or equal to the length of firstStr
  ensures |res| == |firstStr| - countOverlap(firstStr, secondStr); // Length of res is firstStr's length minus overlapping characters
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - `firstStr != null && secondStr != null`: Ensures that both input strings are valid and not null.

2. **Postconditions (`ensures`):**
   - `res != null`: Ensures the result is a valid string.
   - `forall c: char :: c in res ==> c in firstStr`: Ensures all characters in the result string `res` are from the original string `firstStr`.
   - `forall c: char :: c in res ==> c !in secondStr`: Ensures no characters in the result string `res` are from the second string `secondStr`.
   - `|res| <= |firstStr|`: Ensures the length of the result string `res` is less than or equal to the length of `firstStr`.
   - `|res| == |firstStr| - countOverlap(firstStr, secondStr)`: Ensures the length of `res` is equal to the length of `firstStr` minus the number of overlapping characters between `firstStr` and `secondStr`. (This assumes a helper function `countOverlap` exists to count overlapping characters.)

This design ensures the method behaves as expected and verifies the correctness of the program.