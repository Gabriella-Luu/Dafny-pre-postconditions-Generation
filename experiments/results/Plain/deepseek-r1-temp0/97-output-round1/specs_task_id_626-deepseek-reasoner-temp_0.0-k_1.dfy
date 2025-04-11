```dafny
method triangleArea(r: int) returns (res: int)
  requires r >= 0  // Radius cannot be negative
  ensures res == r * r  // Largest possible area is r² for semicircle with radius r
{
}
```