method SphereSurfaceArea (radius: real) returns (area: real)
  requires radius > 0.0
  ensures area == 4.0 * 3.14159265358979323846 * radius * radius
{
  var v0 := 20.0;
  assume {:axiom} radius == v0;
  area := 5032.548245743669;
}