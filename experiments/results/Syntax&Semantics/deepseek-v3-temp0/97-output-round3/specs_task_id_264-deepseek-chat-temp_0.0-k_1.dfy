```dafny
// Dafny method without implementation
method dogAge(hAge: int) returns (res: int)
    requires hAge >= 0
    ensures res == hAge * 7
```
### Explanation:
- **Precondition (`requires`):** The method assumes that the human age (`hAge`) is a non-negative integer. This is a reasonable assumption since age cannot be negative.
- **Postcondition (`ensures`):** The method guarantees that the result (`res`) is equal to the human age multiplied by 7, which is a common way to calculate a dog's age in "dog years."

This design is minimal yet sufficient, adhering to the critical syntax rules and semantic requirements.