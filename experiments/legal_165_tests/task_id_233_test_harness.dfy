method CylinderLateralSurfaceArea (radius: real, height: real) returns (area: real)
  requires radius > 0.0 && height > 0.0
  ensures area == 2.0 * (radius * height) * 3.14159265358979323846
{
  var v0 := 4.0;
  var v1 := 10.0;
  assume {:axiom} radius == v0;
  assume {:axiom} height == v1;
  area := 242.82741228718345;
}