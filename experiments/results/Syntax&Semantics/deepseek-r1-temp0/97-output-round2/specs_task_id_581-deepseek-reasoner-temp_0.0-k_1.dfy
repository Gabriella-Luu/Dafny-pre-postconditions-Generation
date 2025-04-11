```dafny
method surfaceArea(baseEdge: int, height: int) returns (area: int)
  requires baseEdge >= 0
  requires height >= 0
  requires exists s :: s*s == baseEdge*baseEdge + 4*height*height
  ensures exists s :: s*s == baseEdge*baseEdge + 4*height*height && area == baseEdge*baseEdge + baseEdge*s
```