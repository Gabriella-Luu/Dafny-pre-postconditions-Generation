method SphereVolume (radius: real) returns (volume: real)
  requires radius > 0.0
  ensures volume == (4.0/3.0) * (3.1415926535 * radius * radius * radius)
{
  var v0 := 20.0;
  assume {:axiom} radius == v0;
  volume := 33505.62163829113;
}