```dafny
method dogAge(hAge: int) returns (res: int)
  requires hAge >= 0
  ensures res == hAge * 7
```
### Explanation:
- **Precondition (`requires hAge >= 0`)**: The human age (`hAge`) must be non-negative since age cannot be negative.
- **Postcondition (`ensures res == hAge * 7`)**: The result (`res`) is calculated by multiplying the human age by 7, which is a common way to convert human years to dog years. This ensures that the method correctly computes the dog's age based on the given human age.

This design is minimal, adheres to the syntax rules, and meets the semantic requirements by ensuring the correctness of the calculation.