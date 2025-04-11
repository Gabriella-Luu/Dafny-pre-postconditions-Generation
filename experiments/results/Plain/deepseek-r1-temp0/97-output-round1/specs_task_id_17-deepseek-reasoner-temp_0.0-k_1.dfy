```dafny
method squarePerimeter(side:int) returns (res: int)
   requires side >= 0  // Side length must be non-negative
   ensures res == 4 * side  // Result must be exactly four times the input side length
{
   // Method implementation not shown
}
```