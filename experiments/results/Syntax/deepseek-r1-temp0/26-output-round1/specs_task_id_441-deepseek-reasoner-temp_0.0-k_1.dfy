```dafny
method CubeSurfaceArea(size: int) returns (area: int)
  requires size >= 0
  ensures area == 6 * size * size
{
  // Implementation computes 6 * size^2 but not shown here
}
```