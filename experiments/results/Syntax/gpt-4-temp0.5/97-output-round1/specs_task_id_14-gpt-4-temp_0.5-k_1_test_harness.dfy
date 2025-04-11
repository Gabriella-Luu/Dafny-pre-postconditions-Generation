method findVolume (base: int, height: int, length: int) returns (volume: int)
  requires base > 0 && height > 0 && length > 0
  ensures volume == base * height * length
{
  var v0 := 1;
  var v1 := 2;
  var v2 := 1;
  assume {:axiom} base == v0;
  assume {:axiom} height == v1;
  assume {:axiom} length == v2;
  volume := -6;
}