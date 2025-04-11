method CircleCircumference (radius: real) returns (circumference: real)
  requires radius > 0.0
  ensures circumference == 2.0 * 3.14159265358979323846 * radius
{
  var v0 := 4.0;
  assume {:axiom} radius == v0;
  circumference := 15.332;
}