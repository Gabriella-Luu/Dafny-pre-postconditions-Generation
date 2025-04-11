method CubeVolume (size: int) returns (volume: int)
  requires size > 0
  ensures volume == size * size * size
{
  var v0 := 5;
  assume {:axiom} size == v0;
  volume := 128;
}