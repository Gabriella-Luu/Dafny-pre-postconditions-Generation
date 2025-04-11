Here is the Dafny method with preconditions and postconditions designed for the task:

```dafny
method wordLen(str: string) returns (res: bool)
  // Precondition: The input string must not be null.
  requires str != null
  // Postcondition: The result is true if the length of the string is odd, false otherwise.
  ensures res == (|str| % 2 == 1)
{
  // Implementation is omitted as per the request.
}
```

### Explanation:
1. **Precondition (`requires`)**:
   - `str != null`: Ensures that the input string is not null, as operating on a null string would lead to errors.

2. **Postcondition (`ensures`)**:
   - `res == (|str| % 2 == 1)`: Ensures that the result `res` is `true` if the length of the string `str` is odd (i.e., `|str| % 2 == 1`), and `false` otherwise. Here, `|str|` denotes the length of the string `str`.

This design ensures the method behaves correctly according to the task description.