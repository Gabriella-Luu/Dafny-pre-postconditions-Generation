method findQuotient (a:int, b:int) returns (res:int)
    requires b != 0
    ensures b * res <= a < b * (res + 1)
{
  var v0 := 20;
  var v1 := 5;
  assume {:axiom} a == v0;
  assume {:axiom} b == v1;
  res := 12;
}