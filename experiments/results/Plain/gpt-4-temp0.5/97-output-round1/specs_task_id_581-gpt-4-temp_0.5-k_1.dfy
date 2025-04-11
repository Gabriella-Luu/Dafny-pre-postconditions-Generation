```dafny
method surfaceArea(baseEdge: int, height: int) returns (area: int)
    requires baseEdge > 0 && height > 0; // The base edge and height of the pyramid must be positive
    ensures area == baseEdge * baseEdge + 2 * baseEdge * height; // The surface area of a square pyramid is baseEdge^2 + 2*baseEdge*height
```