Here is the Dafny method with preconditions and postconditions for the given task:

```dafny
method triangleArea(r: int) returns (res: int)
  requires r > 0  // The radius of the semicircle must be greater than 0
  ensures res == r * r // The area of the largest triangle that can be inscribed in a semicircle is r*r
{
  // Method implementation goes here
}
```

The precondition `requires r > 0` ensures that the radius of the semicircle is greater than 0. The postcondition `ensures res == r * r` guarantees that the method will return the area of the largest triangle that can be inscribed in a semicircle, which is `r*r` for a semicircle with radius `r`.