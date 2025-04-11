```dafny
method surfaceArea(baseEdge: int, height: int) returns (area: int)
  requires baseEdge >= 0
  requires height >= 0
  ensures exists k: real :: k * k == (baseEdge as real / 2.0) * (baseEdge as real / 2.0) + (height as real) * (height as real) && area as real == (baseEdge as real) * (baseEdge as real) + 2.0 * (baseEdge as real) * k
```