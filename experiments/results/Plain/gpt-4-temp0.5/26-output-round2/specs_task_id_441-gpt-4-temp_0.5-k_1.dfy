Here is the Dafny method with preconditions and postconditions for the task:

```dafny
method CubeSurfaceArea(size: int) returns (area: int)
  requires size > 0 // size of the cube should be greater than 0
  ensures area == 6*size*size // the surface area of a cube is 6 times the square of its side length
{
  // method implementation goes here
}
```

This method requires that the size of the cube is greater than 0 and ensures that the returned area is equal to 6 times the square of the size of the cube. These preconditions and postconditions are based on the properties of a cube in geometry.