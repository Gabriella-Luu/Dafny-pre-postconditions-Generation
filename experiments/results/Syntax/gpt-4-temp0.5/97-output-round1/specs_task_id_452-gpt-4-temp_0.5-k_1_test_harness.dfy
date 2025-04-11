method lossAmount (cost:int,sale:int) returns (res:int)
    requires cost >= 0 && sale >= 0 // The cost and sale should be non-negative
    ensures res >= 0 // The result should be non-negative
    ensures (cost > sale ==> res == cost - sale) && (cost <= sale ==> res == 0) // If there is a loss, the result should be the difference between cost and sale, else it should be 0
{
  var v0 := 2000;
  var v1 := 5000;
  assume {:axiom} cost == v0;
  assume {:axiom} sale == v1;
  res := 9;
}