```dafny
method surfaceArea(baseEdge: int, height: int) returns (area: int)
  requires baseEdge > 0
  requires height > 0
  requires baseEdge % 2 == 0
  requires exists k: int :: k >= 0 && k * k == (baseEdge / 2) * (baseEdge / 2) + height * height
  ensures (exists k: int :: k >= 0 && k * k == (baseEdge / 2) * (baseEdge / 2) + height * height && area == baseEdge * baseEdge + 2 * baseEdge * k)
```