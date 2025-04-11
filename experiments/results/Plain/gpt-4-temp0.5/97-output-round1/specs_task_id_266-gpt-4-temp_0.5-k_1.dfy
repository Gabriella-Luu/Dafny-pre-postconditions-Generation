```dafny
method lateralsurfaceCube(l:int) returns (res:int)
  requires l > 0; // The side length of the cube must be greater than 0
  ensures res == 4*l*l; // The lateral surface area of a cube is 4 times the square of its side length
```