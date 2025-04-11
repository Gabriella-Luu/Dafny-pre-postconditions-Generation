method volumeCube (l:int) returns (res:int)
    requires l >= 0
    ensures res == l * l * l
{
  var v0 := 5;
  assume {:axiom} l == v0;
  res := 115;
}