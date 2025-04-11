Here is the Dafny method with preconditions and postconditions designed based on the task description:

```dafny
method isThreeEqual(a: int, b: int, c: int) returns (res: int)
  // Preconditions: None needed, as the method works for all integer inputs.
  // Postconditions: The result `res` should correctly count the number of equal numbers among `a`, `b`, and `c`.
  ensures res == (if a == b && b == c then 3 else if a == b || b == c || a == c then 2 else 1)
{
  // Implementation is omitted as per the request.
}
```

### Explanation:
1. **Preconditions (`requires`)**: No preconditions are needed because the method is designed to work for all possible integer inputs. There are no restrictions on the values of `a`, `b`, or `c`.

2. **Postconditions (`ensures`)**: The postcondition ensures that the result `res` correctly reflects the number of equal numbers among the three inputs:
   - If all three numbers are equal (`a == b && b == c`), then `res` should be `3`.
   - If exactly two numbers are equal (`a == b || b == c || a == c`), then `res` should be `2`.
   - Otherwise, `res` should be `1` (indicating all three numbers are distinct).

This ensures the correctness of the method based on the task description.