Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method wordLen(str: string) returns (res: bool)
  // Precondition: The input string must not be null.
  requires str != null
  // Postcondition: The result is true if the length of the string is odd, otherwise false.
  ensures res == (|str| % 2 == 1)
{
  // Implementation not provided
}
```

### Explanation:
1. **Precondition (`requires`):**
   - `str != null`: Ensures that the input string is not null, as operating on a null string would lead to errors.

2. **Postcondition (`ensures`):**
   - `res == (|str| % 2 == 1)`: Ensures that the result `res` is `true` if the length of the string is odd (i.e., the length modulo 2 equals 1), and `false` otherwise. Here, `|str|` denotes the length of the string `str`.