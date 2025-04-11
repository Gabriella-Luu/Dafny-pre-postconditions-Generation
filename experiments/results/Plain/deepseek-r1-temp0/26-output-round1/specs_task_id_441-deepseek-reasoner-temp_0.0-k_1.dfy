```dafny
method CubeSurfaceArea(size: int) returns (area: int)
   // Precondition: The cube size must be non-negative
   requires size >= 0
   // Postcondition: The result equals 6 times the square of the size
   ensures area == 6 * size * size
{
   // Implementation not shown
}
```