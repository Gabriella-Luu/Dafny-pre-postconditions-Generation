Here is the Dafny method with preconditions and postconditions for finding the last digit of a given number:

```dafny
method LastDigit(n: int) returns (d: int)
  // Precondition: The input number must be non-negative.
  requires n >= 0
  // Postcondition: The returned digit is the last digit of the input number.
  ensures d == n % 10
  // Postcondition: The returned digit is a single digit (0-9).
  ensures 0 <= d < 10
{
  // Implementation is omitted for this task.
}
```

### Explanation:
1. **Precondition (`requires n >= 0`):**  
   The input number `n` must be non-negative because the last digit of a negative number is not well-defined in the context of this task. If negative numbers were allowed, the last digit would depend on the representation (e.g., `-123` could have a last digit of `3` or `-3` depending on interpretation).

2. **Postcondition (`ensures d == n % 10`):**  
   The returned digit `d` is guaranteed to be the last digit of `n`, which is computed using `n % 10`. This ensures the correctness of the method.

3. **Postcondition (`ensures 0 <= d < 10`):**  
   The returned digit `d` is guaranteed to be a single digit between `0` and `9`, inclusive. This ensures the result is valid as a digit.

This design ensures the method is both correct and well-defined for the given task.