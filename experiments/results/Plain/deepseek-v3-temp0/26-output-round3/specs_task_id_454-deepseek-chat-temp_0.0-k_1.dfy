Here is the Dafny method with preconditions and postconditions designed for the task:

```dafny
method ContainsZ(s: string) returns (result: bool)
  // Precondition: The input string must not be null.
  requires s != null
  // Postcondition: The result is true if and only if the string contains the character 'z'.
  ensures result == exists i :: 0 <= i < |s| && s[i] == 'z'
{
  // Implementation not provided
}
```

### Explanation:
1. **Precondition (`requires`)**:
   - `s != null`: Ensures that the input string is not null, as working with a null string would lead to runtime errors.

2. **Postcondition (`ensures`)**:
   - `result == exists i :: 0 <= i < |s| && s[i] == 'z'`: Ensures that the result is `true` if and only if there exists an index `i` in the string `s` such that the character at that index is `'z'`. This captures the requirement of matching a word containing `'z'`.

This design ensures the method is both safe (due to the precondition) and correct (due to the postcondition).