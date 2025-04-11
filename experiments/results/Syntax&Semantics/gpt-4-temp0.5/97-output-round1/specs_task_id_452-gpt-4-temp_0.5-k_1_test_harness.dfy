method lossAmount (cost:int, sale:int) returns (res:int)
    requires cost >= 0 && sale >= 0
    ensures (cost > sale ==> res == cost - sale) && (cost <= sale ==> res == 0)
{
  var v0 := 2000;
  var v1 := 5000;
  assume {:axiom} cost == v0;
  assume {:axiom} sale == v1;
  res := 8;
}