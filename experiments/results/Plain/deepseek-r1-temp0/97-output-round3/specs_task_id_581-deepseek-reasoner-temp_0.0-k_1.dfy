```dafny
method surfaceArea(baseEdge: int, height: int) returns (area: int)
  requires baseEdge >= 0
  requires height >= 0
  requires baseEdge % 2 == 0 // Base edge must be even to ensure integer division
  requires exists s: int | s >= 0 :: s*s == (baseEdge/2)*(baseEdge/2) + height*height // Ensure slant height is integer
  ensures exists s: int | s >= 0 && s*s == (baseEdge/2)*(baseEdge/2) + height*height :: area == baseEdge*baseEdge + 2*baseEdge*s // Verify correct surface area formula
{
  // Implementation would calculate slant height and compute area here
}
```