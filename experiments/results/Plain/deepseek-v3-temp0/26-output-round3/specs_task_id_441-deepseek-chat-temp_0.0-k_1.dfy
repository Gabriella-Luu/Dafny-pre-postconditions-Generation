Here is the Dafny method with preconditions and postconditions for finding the surface area of a cube:

```dafny
method CubeSurfaceArea(size: int) returns (area: int)
  // Precondition: The size of the cube must be non-negative.
  requires size >= 0
  // Postcondition: The surface area of the cube is correctly calculated as 6 * size^2.
  ensures area == 6 * size * size
{
  // Implementation is omitted as per the task description.
}
```

### Explanation:
1. **Precondition (`requires size >= 0`)**: The size of a cube cannot be negative, as it represents a physical dimension. This ensures the input is valid.
2. **Postcondition (`ensures area == 6 * size * size`)**: The surface area of a cube is calculated using the formula \(6 \times \text{size}^2\). This ensures the method returns the correct result.

This design ensures the method is both safe (valid input) and correct (valid output).