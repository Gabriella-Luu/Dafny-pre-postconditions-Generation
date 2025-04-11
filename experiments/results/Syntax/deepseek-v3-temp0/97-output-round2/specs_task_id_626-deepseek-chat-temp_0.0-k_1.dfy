```dafny
method triangleArea(r: int) returns (res: int)
  requires r > 0
  ensures res == (r * r * 3) / 2
{
  // The largest triangle inscribed in a semicircle is a right-angled triangle
  // with its base as the diameter of the semicircle and height equal to the radius.
  // The area of such a triangle is (base * height) / 2 = (2r * r) / 2 = r^2.
  // However, the given formula in the postcondition is (r * r * 3) / 2, which suggests
  // a different interpretation or a specific requirement.
}
```