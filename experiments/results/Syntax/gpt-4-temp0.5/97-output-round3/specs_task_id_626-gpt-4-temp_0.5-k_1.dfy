```dafny
method triangleArea(r:int) returns (res:int)
    requires r > 0 // The radius of the semicircle must be greater than 0
    ensures res == r*r // The area of the largest triangle that can be inscribed in a semicircle is equal to the square of the radius
```