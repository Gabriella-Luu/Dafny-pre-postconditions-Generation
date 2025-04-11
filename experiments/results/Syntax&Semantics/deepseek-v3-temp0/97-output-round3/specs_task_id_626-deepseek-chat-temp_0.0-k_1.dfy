```dafny
method triangleArea(r: int) returns (res: int)
  requires r > 0
  ensures res == (r * r * 3) / 2
{
  // The largest triangle inscribed in a semicircle is a right-angled triangle with the diameter as the hypotenuse.
  // The area of such a triangle is (r^2 * 3) / 2, where r is the radius of the semicircle.
}
```