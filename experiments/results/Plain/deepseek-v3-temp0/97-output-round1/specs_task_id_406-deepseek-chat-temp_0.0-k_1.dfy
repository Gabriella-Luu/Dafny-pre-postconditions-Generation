Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method findParity(n: int) returns (res: bool)
  // Precondition: The input integer n must be a valid integer (no specific constraints needed for parity checking).
  requires true
  // Postcondition: The result res is true if and only if the parity of n is odd.
  ensures res == (n % 2 != 0)
{
  // Implementation not provided
}
```

### Explanation:
1. **Precondition (`requires`):**  
   Since checking the parity of an integer does not impose any specific constraints on the input (any integer is valid), the precondition is simply `true`. This means the method can accept any integer value for `n`.

2. **Postcondition (`ensures`):**  
   The postcondition ensures that the result `res` is `true` if and only if the parity of `n` is odd. This is expressed as `res == (n % 2 != 0)`, which checks if the remainder of `n` divided by 2 is not zero (indicating an odd number).