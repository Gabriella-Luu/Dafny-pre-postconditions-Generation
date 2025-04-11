```dafny
method triangleArea(r: int) returns (res: int)
  requires r > 0
  ensures res == (r * r * 3) / 2
{
  // The largest triangle inscribed in a semicircle is a right-angled triangle with its base as the diameter of the semicircle.
  // The area of such a triangle is (r * r * 3) / 2.
}
```