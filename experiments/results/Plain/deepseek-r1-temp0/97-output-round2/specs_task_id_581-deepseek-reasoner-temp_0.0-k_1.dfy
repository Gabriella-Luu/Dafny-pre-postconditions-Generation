```dafny
method surfaceArea(baseEdge: int, height: int) returns (area: int)
   requires baseEdge >= 0
   requires height >= 0
   requires exists k: int :: k*k == baseEdge*baseEdge + 4*height*height
   ensures area == baseEdge*baseEdge + 2*baseEdge * ( ((baseEdge as real / 2.0)*(baseEdge as real / 2.0) + (height as real)*(height as real)).sqrt()
```