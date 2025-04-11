```dafny
method volumeCube(l:int) returns (res:int)
  requires l >= 0; // The side length of a cube must be non-negative
  ensures res == l*l*l; // The volume of a cube is the side length cubed
```