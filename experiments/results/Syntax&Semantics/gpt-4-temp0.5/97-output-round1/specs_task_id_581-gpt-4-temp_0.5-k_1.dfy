```dafny
method surfaceArea(baseEdge: int, height: int) returns (area: int)
    requires baseEdge > 0 && height > 0
    ensures area == baseEdge * baseEdge + 2 * baseEdge * height
```