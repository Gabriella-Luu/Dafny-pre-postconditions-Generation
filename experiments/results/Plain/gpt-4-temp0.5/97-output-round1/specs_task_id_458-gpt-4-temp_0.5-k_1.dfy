```dafny
method rectangleArea(l:int, b:int) returns (res:int)
  requires l > 0 && b > 0; // The length and breadth of the rectangle must be greater than 0
  ensures res == l * b; // The returned result should be the product of the length and breadth
```