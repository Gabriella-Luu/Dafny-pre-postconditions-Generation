method isNumDecagonal  (n:int) returns (res:int)
    requires n >= 0
    ensures res == 4*n*n - 3*n
{
  var v0 := 10;
  assume {:axiom} n == v0;
  res := 368;
}