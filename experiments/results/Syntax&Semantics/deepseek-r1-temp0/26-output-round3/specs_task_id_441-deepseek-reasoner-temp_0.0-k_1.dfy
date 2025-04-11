```dafny
method CubeSurfaceArea(size: int) returns (area: int)
  requires size >= 0
  ensures area == 6 * size * size
{
  // Method implementation would calculate 6 * size^2 here
}
```