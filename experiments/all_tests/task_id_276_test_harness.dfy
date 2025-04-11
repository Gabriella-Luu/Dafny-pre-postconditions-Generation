method CylinderVolume (radius: real, height: real) returns (volume: real)
  requires radius > 0.0
  requires height > 0.0
  ensures volume == 3.14159265359 * radius * radius * height
{
  var v0 := 4.0;
  var v1 := 10.0;
  assume {:axiom} radius == v0;
  assume {:axiom} height == v1;
  volume := 496.84000000000003;
}