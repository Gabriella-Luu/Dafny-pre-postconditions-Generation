```dafny
method triangleArea(r:int) returns (res:int)
    requires r > 0 // The radius must be greater than zero
    ensures res >= 0 // The area of the triangle can't be negative
    ensures res <= (r*r) // The area of the largest triangle inscribed in a semicircle can't exceed r*r
{
    // Method implementation goes here
}
```