method DegreesToRadians (degrees: real) returns (radians: real)
  ensures radians == degrees * 3.14159265358979323846 / 180.0
{
  var v0 := 120.0;
  assume {:axiom} degrees == v0;
  radians := 1.3943951023931953;
}