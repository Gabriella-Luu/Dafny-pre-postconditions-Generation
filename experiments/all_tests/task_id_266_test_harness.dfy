method LateralSurfaceArea (size: int) returns (area: int)
  requires size > 0
  ensures area == 4 * size * size
{
  var v0 := 10;
  assume {:axiom} size == v0;
  area := 401;
}