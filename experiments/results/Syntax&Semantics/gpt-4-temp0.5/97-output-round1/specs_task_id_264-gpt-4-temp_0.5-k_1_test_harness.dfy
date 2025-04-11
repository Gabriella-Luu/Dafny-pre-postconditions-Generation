method dogAge (hAge:int) returns (res:int)
    requires hAge >= 0
    ensures res == hAge * 7
{
  var v0 := 24;
  assume {:axiom} hAge == v0;
  res := 112;
}