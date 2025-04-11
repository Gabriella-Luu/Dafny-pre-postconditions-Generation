Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method lastDigitFactorial(n: int) returns (res: int)
  // Precondition: The input number n must be non-negative.
  requires n >= 0
  // Postcondition 1: The result res is the factorial of the last digit of n.
  ensures res == Factorial(n % 10)
  // Postcondition 2: The result res is always non-negative.
  ensures res >= 0
{
  // Implementation is omitted as per the task.
}
```

### Explanation:
1. **Precondition (`requires n >= 0`)**:
   - The input number `n` must be non-negative because factorials are defined for non-negative integers. This ensures the method works correctly for valid inputs.

2. **Postcondition 1 (`ensures res == Factorial(n % 10)`)**:
   - The result `res` is the factorial of the last digit of `n`. The last digit is obtained using `n % 10`, and `Factorial` is a hypothetical function that computes the factorial of a number. This ensures the method computes the correct value.

3. **Postcondition 2 (`ensures res >= 0`)**:
   - The result `res` is always non-negative because factorials are always non-negative. This ensures the method adheres to the mathematical properties of factorials.

Note: The `Factorial` function is assumed to be defined elsewhere in the program. If it is not already defined, you would need to define it separately.