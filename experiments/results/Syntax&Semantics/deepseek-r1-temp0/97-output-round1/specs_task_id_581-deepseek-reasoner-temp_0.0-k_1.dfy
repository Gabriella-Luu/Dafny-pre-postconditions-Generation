```dafny
method surfaceArea(baseEdge: int, height: int) returns (area: int)
  requires baseEdge > 0
  requires height > 0
  ensures area == baseEdge * baseEdge + 2 * baseEdge * ((baseEdge / 2) * (baseEdge / 2) + height * height)
```