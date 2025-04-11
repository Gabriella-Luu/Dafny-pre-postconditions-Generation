```dafny
method CubeSurfaceArea(size: int) returns (area: int)
    requires size >= 0; // A cube cannot have a negative size
    ensures area == 6 * size * size; // The surface area of a cube is 6 times the square of its size
```