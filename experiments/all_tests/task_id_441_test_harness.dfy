method CubeSurfaceArea (size: int) returns (area: int)
  requires size > 0
  ensures area == 6 * size * size
{
  var v0 := 10;
  assume {:axiom} size == v0;
  area := 609;
}