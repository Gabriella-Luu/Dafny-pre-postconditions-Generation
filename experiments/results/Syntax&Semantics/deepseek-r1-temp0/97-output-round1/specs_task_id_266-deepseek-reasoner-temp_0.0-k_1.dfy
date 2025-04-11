```dafny
method lateralsurfaceCube(l: int) returns (res: int)
  requires l >= 0
  ensures res == 4 * l * l
```