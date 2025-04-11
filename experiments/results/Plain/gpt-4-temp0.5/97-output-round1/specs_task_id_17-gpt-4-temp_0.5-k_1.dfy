```dafny
method squarePerimeter(side:int) returns (res: int)
    requires side > 0; // The side length of a square must be greater than 0
    ensures res == 4 * side; // The perimeter of a square is four times its side length
```