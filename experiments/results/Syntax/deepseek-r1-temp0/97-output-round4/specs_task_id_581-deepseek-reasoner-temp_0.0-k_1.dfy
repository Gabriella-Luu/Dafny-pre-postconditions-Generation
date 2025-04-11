```dafny
method surfaceArea(baseEdge: int, height: int) returns (area: int)
  requires baseEdge >= 0
  requires height >= 0
  ensures (baseEdge == 0 || height == 0) ==> area == baseEdge * baseEdge
  ensures (baseEdge > 0 && height > 0) ==> area > baseEdge * baseEdge
```