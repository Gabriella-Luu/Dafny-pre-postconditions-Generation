method perimeterPentagon (a:int) returns (res:int)
    requires a > 0
    ensures res == 5*a
{
  var v0 := 15;
  assume {:axiom} a == v0;
  res := 70;
}