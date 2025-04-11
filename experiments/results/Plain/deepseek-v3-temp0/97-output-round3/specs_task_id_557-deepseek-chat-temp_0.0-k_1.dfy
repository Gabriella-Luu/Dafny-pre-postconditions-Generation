Here is the Dafny method with preconditions and postconditions designed for the task of toggling the case of all characters in a string:

```dafny
method toggleString(str: string) returns (res: string)
  // Precondition: The input string must not be null.
  requires str != null
  // Postcondition 1: The length of the result string is the same as the input string.
  ensures |res| == |str|
  // Postcondition 2: Every character in the result string is the toggled case of the corresponding character in the input string.
  ensures forall i :: 0 <= i < |str| ==> (
    (str[i] >= 'a' && str[i] <= 'z' ==> res[i] == str[i] - ('a' - 'A')) &&
    (str[i] >= 'A' && str[i] <= 'Z' ==> res[i] == str[i] + ('a' - 'A')) &&
    (!(str[i] >= 'a' && str[i] <= 'z') && !(str[i] >= 'A' && str[i] <= 'Z') ==> res[i] == str[i])
  )
{
  // Implementation not provided
}
```

### Explanation:
1. **Precondition (`requires`)**:
   - The input string `str` must not be null. This ensures the method operates on a valid string.

2. **Postconditions (`ensures`)**:
   - The length of the result string `res` is the same as the input string `str`. This ensures no characters are added or removed during the toggling process.
   - Every character in the result string `res` is the toggled case of the corresponding character in the input string `str`. Specifically:
     - If the character is a lowercase letter (`a`-`z`), it is converted to uppercase.
     - If the character is an uppercase letter (`A`-`Z`), it is converted to lowercase.
     - If the character is not a letter (e.g., numbers, symbols), it remains unchanged.

This design ensures the correctness of the method by explicitly stating the expected behavior and constraints.