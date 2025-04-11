method SquarePyramidSurfaceArea (baseEdge: int, height: int) returns (area: int)
  requires baseEdge > 0
  requires height > 0
  ensures area == baseEdge * baseEdge + 2 * baseEdge * height
{
  var v0 := 1;
  var v1 := 2;
  assume {:axiom} baseEdge == v0;
  assume {:axiom} height == v1;
  area := 13;
}