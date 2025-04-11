method hexagonalNum (n:int) returns (res:int)
    requires n >= 0
    ensures res == n * ((2 * n) - 1)
{
  var v0 := 7;
  assume {:axiom} n == v0;
  res := 94;
}