```dafny
method dogAge(hAge: int) returns (res: int)
  requires hAge >= 0
  ensures res == hAge * 7
{
  // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires hAge >= 0`)**: The human age (`hAge`) must be a non-negative integer. This is a reasonable assumption since age cannot be negative.
- **Postcondition (`ensures res == hAge * 7`)**: The result (`res`) is calculated by multiplying the human age by 7, which is a common way to estimate a dog's age in "dog years."

This design is minimal yet sufficient, adhering to the critical syntax rules and semantic requirements.