```dafny
method dogAge(hAge: int) returns (res: int)
  requires hAge >= 0
  ensures res == hAge * 7
{
  // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires hAge >= 0`)**: The human age (`hAge`) must be non-negative since age cannot be negative.
- **Postcondition (`ensures res == hAge * 7`)**: The result (`res`) is calculated by multiplying the human age by 7, which is a common approximation for converting human years to dog years.

This design ensures that the method is both simple and verifiable, adhering to the given constraints and requirements.