```dafny
method CubeSurfaceArea(size: int) returns (area: int)
   // Precondition: Size must be non-negative since a cube cannot have negative dimensions
   requires size >= 0
   // Postcondition: The result equals 6 times the square of the input size (standard cube surface area formula)
   ensures area == 6 * size * size
{
   // Implementation would go here (but is omitted per request)
}
```