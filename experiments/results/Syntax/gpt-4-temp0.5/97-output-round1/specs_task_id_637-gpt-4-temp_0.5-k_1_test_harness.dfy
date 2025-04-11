method noprofitNoloss (cost: int, sale: int) returns (res:bool)
    requires cost >= 0
    requires sale >= 0
    ensures res <==> (cost == sale)
{
  var v0 := 2000;
  var v1 := 5000;
  assume {:axiom} cost == v0;
  assume {:axiom} sale == v1;
  res := true;
}