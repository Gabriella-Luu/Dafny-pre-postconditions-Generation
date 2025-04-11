Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method ContainsZ(s: string) returns (result: bool)
  // Precondition: The input string `s` must not be null.
  requires s != null
  // Postcondition: The result is true if and only if the string `s` contains the character 'z'.
  ensures result == exists i :: 0 <= i < |s| && s[i] == 'z'
{
  // Implementation is omitted as per the task.
}
```

### Explanation:
1. **Precondition (`requires`)**:
   - `s != null`: Ensures that the input string `s` is not null, as working with a null string would lead to runtime errors.

2. **Postcondition (`ensures`)**:
   - `result == exists i :: 0 <= i < |s| && s[i] == 'z'`: Ensures that the result is `true` if and only if there exists an index `i` in the string `s` such that the character at that index is `'z'`. This captures the requirement of matching a word containing `'z'`.

This design ensures the method is both safe (due to the precondition) and correct (due to the postcondition).