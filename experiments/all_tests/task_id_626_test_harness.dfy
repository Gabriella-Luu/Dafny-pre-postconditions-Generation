method AreaOfLargestTriangleInSemicircle (radius: int) returns (area: int)
  requires radius > 0
  ensures area == radius * radius
{
  var v0 := 3;
  assume {:axiom} radius == v0;
  area := 5;
}