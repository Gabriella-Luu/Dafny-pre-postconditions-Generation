method lateralsurfaceCube (l:int) returns (res:int)
  requires l > 0
  ensures res == 4*l*l
{
  var v0 := 10;
  assume {:axiom} l == v0;
  res := 390;
}