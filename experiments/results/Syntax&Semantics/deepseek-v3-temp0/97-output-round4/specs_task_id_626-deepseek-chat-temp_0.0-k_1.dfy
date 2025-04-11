```dafny
method triangleArea(r: int) returns (res: int)
  requires r > 0
  ensures res == (r * r * 3) / 2
{
  // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires r > 0`)**: The radius `r` must be a positive integer since a radius cannot be zero or negative in this context.
- **Postcondition (`ensures res == (r * r * 3) / 2`)**: The area of the largest triangle that can be inscribed in a semicircle with radius `r` is given by the formula `(r * r * 3) / 2`. This ensures that the result `res` is correctly computed based on the given radius.

This design adheres to the critical syntax rules and semantic requirements, ensuring logical simplicity and verification efficiency.